package db

import (
	"context"
	"database/sql"
	"log/slog"

	sq "github.com/Masterminds/squirrel"
	"github.com/jackc/pgx/v5"
	"github.com/opentdf/platform/protocol/go/common"
	"github.com/opentdf/platform/protocol/go/policy"
	"github.com/opentdf/platform/protocol/go/policy/attributes"
	"github.com/opentdf/platform/service/internal/db"
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

type attributeValueSelectOptions struct {
	state   string
	withFqn bool
	// withKeyAccessGrants  bool
	// withSubjectMappings  bool
	// withResourceMappings bool

	// withAttribute                bool
	// withAttributeKeyAccessGrants bool
	// withAttributeNamespace       bool
}

func attributeValueHydrateItem(row pgx.Row, opts attributeValueSelectOptions) (*policy.Value, error) {
	var (
		id           string
		value        string
		active       bool
		membersJSON  []byte
		metadataJSON []byte
		attributeId  string
		fqn          sql.NullString
		members      []*policy.Value
	)
	fields := []interface{}{
		&id,
		&value,
		&active,
		&membersJSON,
		&metadataJSON,
		&attributeId,
	}

	if opts.withFqn {
		fields = append(fields, &fqn)
	}
	if err := row.Scan(fields...); err != nil {
		return nil, db.WrapIfKnownInvalidQueryErr(err)
	} else {
		if membersJSON != nil {
			members, err = attributesValuesProtojson(membersJSON)
			if err != nil {
				return nil, err
			}
		}
	}

	m := &common.Metadata{}
	if metadataJSON != nil {
		if err := protojson.Unmarshal(metadataJSON, m); err != nil {
			return nil, err
		}
	}

	v := &policy.Value{
		Id:       id,
		Value:    value,
		Active:   &wrapperspb.BoolValue{Value: active},
		Members:  members,
		Metadata: m,
		Attribute: &policy.Attribute{
			Id: attributeId,
		},
		Fqn: fqn.String,
	}
	return v, nil
}

func attributeValueHydrateItems(rows pgx.Rows, opts attributeValueSelectOptions) ([]*policy.Value, error) {
	list := make([]*policy.Value, 0)
	for rows.Next() {
		v, err := attributeValueHydrateItem(rows, opts)
		if err != nil {
			return nil, err
		}
		list = append(list, v)
	}
	return list, nil
}

///
/// CRUD
///

func addMemberSql(value_id string, member_id string) (string, []interface{}, error) {
	t := Tables.ValueMembers
	return db.NewStatementBuilder().
		Insert(t.Name()).
		Columns(
			"value_id",
			"member_id",
		).
		Values(
			value_id,
			member_id,
		).
		Suffix("RETURNING id").
		ToSql()
}

func removeMemberSql(value_id string, member_id string) (string, []interface{}, error) {
	t := Tables.ValueMembers
	return db.NewStatementBuilder().
		Delete(t.Name()).
		Where(sq.Eq{
			t.Field("value_id"):  value_id,
			t.Field("member_id"): member_id,
		}).
		Suffix("RETURNING id").
		ToSql()
}

func createAttributeValueSql(
	attribute_id string,
	value string,
	metadata []byte,
) (string, []interface{}, error) {
	t := Tables.AttributeValues
	return db.NewStatementBuilder().
		Insert(t.Name()).
		Columns(
			"attribute_definition_id",
			"value",
			"metadata",
		).
		Values(
			attribute_id,
			value,
			metadata,
		).
		Suffix("RETURNING id").
		ToSql()
}

func (c PolicyDBClient) CreateAttributeValue(ctx context.Context, attributeID string, v *attributes.CreateAttributeValueRequest) (*policy.Value, error) {
	metadataJSON, metadata, err := db.MarshalCreateMetadata(v.GetMetadata())
	if err != nil {
		return nil, err
	}

	sql, args, err := createAttributeValueSql(
		attributeID,
		v.GetValue(),
		metadataJSON,
	)
	if err != nil {
		return nil, err
	}

	var id string
	if r, err := c.QueryRow(ctx, sql, args); err != nil {
		return nil, err
	} else if err := r.Scan(&id); err != nil {
		return nil, db.WrapIfKnownInvalidQueryErr(err)
	}

	var members []*policy.Value

	// Add members
	for _, member := range v.GetMembers() {
		var vm_id string
		sql, args, err := addMemberSql(id, member)
		if err != nil {
			return nil, err
		}
		if r, err := c.QueryRow(ctx, sql, args); err != nil {
			return nil, err
		} else if err := r.Scan(&vm_id); err != nil {
			return nil, db.WrapIfKnownInvalidQueryErr(err)
		}
		attr, err := c.GetAttributeValue(ctx, member)
		if err != nil {
			return nil, err
		}
		members = append(members, attr)
	}

	// Update FQN
	c.upsertAttrFqn(ctx, attrFqnUpsertOptions{valueId: id})

	rV := &policy.Value{
		Id:        id,
		Attribute: &policy.Attribute{Id: attributeID},
		Value:     v.GetValue(),
		Members:   members,
		Metadata:  metadata,
		Active:    &wrapperspb.BoolValue{Value: true},
	}
	return rV, nil
}

func getAttributeValueSql(id string, opts attributeValueSelectOptions) (string, []interface{}, error) {
	t := Tables.AttributeValues
	fqnT := Tables.AttrFqn
	members := "COALESCE(JSON_AGG(JSON_BUILD_OBJECT(" +
		"'id', vmv.id, " +
		"'value', vmv.value, " +
		"'active', vmv.active, " +
		"'members', vmv.members || ARRAY[]::UUID[], " +
		"'metadata', vmv.metadata, " +
		"'attribute', JSON_BUILD_OBJECT(" +
		"'id', vmv.attribute_definition_id )"
	if opts.withFqn {
		members += ", 'fqn', " + "fqn1.fqn"
	}
	members += ")) FILTER (WHERE vmv.id IS NOT NULL ), '[]') AS members"
	fields := []string{
		"av.id",
		"av.value",
		"av.active",
		members,
		"av.metadata",
		"av.attribute_definition_id",
	}
	if opts.withFqn {
		fields = append(fields, "MAX(fqn2.fqn) AS fqn")
	}

	sb := db.NewStatementBuilder().
		Select(fields...).
		From(t.Name() + " av")

	// join members
	sb = sb.LeftJoin(Tables.ValueMembers.Name() + " vm ON av.id = vm.value_id")

	// join attribute values
	sb = sb.LeftJoin(t.Name() + " vmv ON vm.member_id = vmv.id")

	if opts.withFqn {
		sb = sb.LeftJoin(fqnT.Name() + " AS fqn1 ON " + "fqn1.value_id" + " = " + "vmv.id")
		sb = sb.LeftJoin(fqnT.Name() + " AS fqn2 ON " + "fqn2.value_id" + " = " + "av.id")
	}

	return sb.Where(sq.Eq{"av.id": id}).GroupBy("av.id").ToSql()
}

func (c PolicyDBClient) GetAttributeValue(ctx context.Context, id string) (*policy.Value, error) {
	opts := attributeValueSelectOptions{withFqn: true}
	sql, args, err := getAttributeValueSql(id, opts)
	if err != nil {
		return nil, err
	}

	row, err := c.QueryRow(ctx, sql, args)
	if err != nil {
		slog.Error("error getting attribute value", slog.String("id", id), slog.String("sql", sql), slog.String("error", err.Error()))
		return nil, err
	}

	a, err := attributeValueHydrateItem(row, opts)
	if err != nil {
		slog.Error("error hydrating attribute value", slog.String("id", id), slog.String("sql", sql), slog.String("error", err.Error()))
		return nil, err
	}
	return a, nil
}

func listAttributeValuesSql(attribute_id string, opts attributeValueSelectOptions) (string, []interface{}, error) {
	t := Tables.AttributeValues
	members := "COALESCE(JSON_AGG(JSON_BUILD_OBJECT(" +
		"'id', vmv.id, " +
		"'value', vmv.value, " +
		"'active', vmv.active, " +
		"'members', vmv.members || ARRAY[]::UUID[], " +
		"'metadata', vmv.metadata, " +
		"'attribute', JSON_BUILD_OBJECT(" +
		"'id', vmv.attribute_definition_id )"
	if opts.withFqn {
		members += ", 'fqn', " + "fqn1.fqn"
	}
	members += ")) FILTER (WHERE vmv.id IS NOT NULL ), '[]') AS members"
	fields := []string{
		"av.id",
		"av.value",
		"av.active",
		members,
		"av.metadata",
		"av.attribute_definition_id",
	}
	if opts.withFqn {
		fields = append(fields, "MAX(fqn2.fqn) AS fqn")
	}

	sb := db.NewStatementBuilder().
		Select(fields...)

	// join members
	sb = sb.LeftJoin(Tables.ValueMembers.Name() + " vm ON av.id = vm.value_id")

	// join attribute values
	sb = sb.LeftJoin(t.Name() + " vmv ON vm.member_id = vmv.id")

	if opts.withFqn {
		fqnT := Tables.AttrFqn
		sb = sb.LeftJoin(fqnT.Name() + " AS fqn1 ON " + "fqn1.value_id" + " = " + "vmv.id")
		sb = sb.LeftJoin(fqnT.Name() + " AS fqn2 ON " + "fqn2.value_id" + " = " + "av.id")
	}

	sb = sb.GroupBy("av.id")

	where := sq.Eq{}
	if opts.state != "" && opts.state != StateAny {
		where["av.active"] = opts.state == StateActive
	}
	where["av.attribute_definition_id"] = attribute_id

	return sb.
		From(t.Name() + " av").
		Where(where).
		ToSql()
}

func (c PolicyDBClient) ListAttributeValues(ctx context.Context, attributeID string, state string) ([]*policy.Value, error) {
	opts := attributeValueSelectOptions{withFqn: true, state: state}

	sql, args, err := listAttributeValuesSql(attributeID, opts)
	if err != nil {
		return nil, err
	}

	rows, err := c.Query(ctx, sql, args)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	return attributeValueHydrateItems(rows, opts)
}

func listAllAttributeValuesSql(opts attributeValueSelectOptions) (string, []interface{}, error) {
	t := Tables.AttributeValues
	members := "COALESCE(JSON_AGG(JSON_BUILD_OBJECT(" +
		"'id', vmv.id, " +
		"'value', vmv.value, " +
		"'active', vmv.active, " +
		"'members', vmv.members || ARRAY[]::UUID[], " +
		"'metadata', vmv.metadata, " +
		"'attribute', JSON_BUILD_OBJECT(" +
		"'id', vmv.attribute_definition_id )"
	if opts.withFqn {
		members += ", 'fqn', " + "fqn1.fqn"
	}
	members += ")) FILTER (WHERE vmv.id IS NOT NULL ), '[]') AS members"
	fields := []string{
		"av.id",
		"av.value",
		"av.active",
		members,
		"av.metadata",
		"av.attribute_definition_id",
	}
	if opts.withFqn {
		fields = append(fields, "MAX(fqn2.fqn) AS fqn")
	}
	sb := db.NewStatementBuilder().
		Select(fields...)

	// join members
	sb = sb.LeftJoin(Tables.ValueMembers.Name() + " vm ON av.id = vm.value_id")

	// join attribute values
	sb = sb.LeftJoin(t.Name() + " vmv ON vm.member_id = vmv.id")

	if opts.withFqn {
		fqnT := Tables.AttrFqn
		sb = sb.LeftJoin(fqnT.Name() + " AS fqn1 ON " + "fqn1.value_id" + " = " + "vmv.id")
		sb = sb.LeftJoin(fqnT.Name() + " AS fqn2 ON " + "fqn2.value_id" + " = " + "av.id")
	}

	sb = sb.GroupBy("av.id")

	return sb.
		From(t.Name() + " av").
		ToSql()
}

func (c PolicyDBClient) ListAllAttributeValues(ctx context.Context, state string) ([]*policy.Value, error) {
	opts := attributeValueSelectOptions{withFqn: true, state: state}
	sql, args, err := listAllAttributeValuesSql(opts)
	if err != nil {
		return nil, err
	}

	rows, err := c.Query(ctx, sql, args)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	return attributeValueHydrateItems(rows, opts)
}

func updateAttributeValueSql(
	id string,
	metadata []byte,
) (string, []interface{}, error) {
	t := Tables.AttributeValues
	sb := db.NewStatementBuilder().Update(t.Name())

	if metadata != nil {
		sb = sb.Set("metadata", metadata)
	}

	return sb.Where(sq.Eq{t.Field("id"): id}).ToSql()
}

func (c PolicyDBClient) UpdateAttributeValue(ctx context.Context, r *attributes.UpdateAttributeValueRequest) (*policy.Value, error) {
	metadataJSON, _, err := db.MarshalUpdateMetadata(r.GetMetadata(), r.GetMetadataUpdateBehavior(), func() (*common.Metadata, error) {
		v, err := c.GetAttributeValue(ctx, r.GetId())
		if err != nil {
			return nil, err
		}
		return v.GetMetadata(), nil
	})
	if err != nil {
		return nil, err
	}

	sql, args, err := updateAttributeValueSql(
		r.GetId(),
		metadataJSON,
	)
	if db.IsQueryBuilderSetClauseError(err) {
		return &policy.Value{
			Id: r.GetId(),
		}, nil
	}
	if err != nil {
		return nil, err
	}

	prev, err := c.GetAttributeValue(ctx, r.GetId())
	if err != nil {
		return nil, err
	}

	if err := c.Exec(ctx, sql, args); err != nil {
		return nil, err
	}
	prevMembersSet := map[string]bool{}

	for _, member := range prev.GetMembers() {
		prevMembersSet[member.GetId()] = true
	}

	membersSet := map[string]bool{}
	for _, member := range r.GetMembers() {
		membersSet[member] = true
	}

	toRemove := map[string]bool{}
	toAdd := map[string]bool{}

	for member := range prevMembersSet {
		if _, ok := membersSet[member]; !ok {
			toRemove[member] = true
		}
	}

	for member := range membersSet {
		if _, ok := prevMembersSet[member]; !ok {
			toAdd[member] = true
		}
	}

	// Remove members
	for member := range toRemove {
		sql, args, err = removeMemberSql(r.GetId(), member)
		if err != nil {
			return nil, err
		}
		if err := c.Exec(ctx, sql, args); err != nil {
			return nil, err
		}
	}

	for member := range toAdd {
		sql, args, err = addMemberSql(r.GetId(), member)
		if err != nil {
			return nil, err
		}
		if err := c.Exec(ctx, sql, args); err != nil {
			return nil, err
		}
	}

	// Update FQN
	c.upsertAttrFqn(ctx, attrFqnUpsertOptions{valueId: r.GetId()})

	return &policy.Value{
		Id: r.GetId(),
	}, nil
}

func deactivateAttributeValueSql(id string) (string, []interface{}, error) {
	t := Tables.AttributeValues
	return db.NewStatementBuilder().
		Update(t.Name()).
		Set("active", false).
		Where(sq.Eq{t.Field("id"): id}).
		Suffix("RETURNING \"id\"").
		ToSql()
}

func (c PolicyDBClient) DeactivateAttributeValue(ctx context.Context, id string) (*policy.Value, error) {
	sql, args, err := deactivateAttributeValueSql(id)
	if err != nil {
		return nil, err
	}

	if err := c.Exec(ctx, sql, args); err != nil {
		return nil, err
	}
	return c.GetAttributeValue(ctx, id)
}

func deleteAttributeValueSql(id string) (string, []interface{}, error) {
	t := Tables.AttributeValues
	return db.NewStatementBuilder().
		Delete(t.Name()).
		Where(sq.Eq{t.Field("id"): id}).
		ToSql()
}

func (c PolicyDBClient) DeleteAttributeValue(ctx context.Context, id string) (*policy.Value, error) {
	prev, err := c.GetAttributeValue(ctx, id)
	if err != nil {
		return nil, err
	}

	sql, args, err := deleteAttributeValueSql(id)
	if err != nil {
		return nil, err
	}

	if err := c.Exec(ctx, sql, args); err != nil {
		return nil, err
	}

	return prev, nil
}

func assignKeyAccessServerToValueSql(valueID, keyAccessServerID string) (string, []interface{}, error) {
	t := Tables.AttributeValueKeyAccessGrants
	return db.NewStatementBuilder().
		Insert(t.Name()).
		Columns("attribute_value_id", "key_access_server_id").
		Values(valueID, keyAccessServerID).
		ToSql()
}

func (c PolicyDBClient) AssignKeyAccessServerToValue(ctx context.Context, k *attributes.ValueKeyAccessServer) (*attributes.ValueKeyAccessServer, error) {
	sql, args, err := assignKeyAccessServerToValueSql(k.GetValueId(), k.GetKeyAccessServerId())
	if err != nil {
		return nil, err
	}

	if err := c.Exec(ctx, sql, args); err != nil {
		return nil, err
	}

	return k, nil
}

func removeKeyAccessServerFromValueSql(valueID, keyAccessServerID string) (string, []interface{}, error) {
	t := Tables.AttributeValueKeyAccessGrants
	return db.NewStatementBuilder().
		Delete(t.Name()).
		Where(sq.Eq{t.Field("attribute_value_id"): valueID, t.Field("key_access_server_id"): keyAccessServerID}).
		Suffix("IS TRUE RETURNING *").
		ToSql()
}

func (c PolicyDBClient) RemoveKeyAccessServerFromValue(ctx context.Context, k *attributes.ValueKeyAccessServer) (*attributes.ValueKeyAccessServer, error) {
	sql, args, err := removeKeyAccessServerFromValueSql(k.GetValueId(), k.GetKeyAccessServerId())
	if err != nil {
		return nil, err
	}

	if err := c.Exec(ctx, sql, args); err != nil {
		return nil, err
	}

	return k, nil
}
