// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.31.0
// 	protoc        (unknown)
// source: common/v1/common.proto

package commonv1

import (
	_ "buf.build/gen/go/bufbuild/protovalidate/protocolbuffers/go/buf/validate"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type PolicyResourceType int32

const (
	PolicyResourceType_POLICY_RESOURCE_TYPE_UNSPECIFIED               PolicyResourceType = 0
	PolicyResourceType_POLICY_RESOURCE_TYPE_RESOURCE_ENCODING         PolicyResourceType = 1
	PolicyResourceType_POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_SYNONYM PolicyResourceType = 2
	PolicyResourceType_POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_MAPPING PolicyResourceType = 3
	PolicyResourceType_POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_GROUP   PolicyResourceType = 4
	PolicyResourceType_POLICY_RESOURCE_TYPE_SUBJECT_ENCODING_MAPPING  PolicyResourceType = 5
	PolicyResourceType_POLICY_RESOURCE_TYPE_KEY_ACCESS                PolicyResourceType = 6
	PolicyResourceType_POLICY_RESOURCE_TYPE_ATTRIBUTE_DEFINITION      PolicyResourceType = 7
	PolicyResourceType_POLICY_RESOURCE_TYPE_ATTRIBUTE_GROUP           PolicyResourceType = 8
)

// Enum value maps for PolicyResourceType.
var (
	PolicyResourceType_name = map[int32]string{
		0: "POLICY_RESOURCE_TYPE_UNSPECIFIED",
		1: "POLICY_RESOURCE_TYPE_RESOURCE_ENCODING",
		2: "POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_SYNONYM",
		3: "POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_MAPPING",
		4: "POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_GROUP",
		5: "POLICY_RESOURCE_TYPE_SUBJECT_ENCODING_MAPPING",
		6: "POLICY_RESOURCE_TYPE_KEY_ACCESS",
		7: "POLICY_RESOURCE_TYPE_ATTRIBUTE_DEFINITION",
		8: "POLICY_RESOURCE_TYPE_ATTRIBUTE_GROUP",
	}
	PolicyResourceType_value = map[string]int32{
		"POLICY_RESOURCE_TYPE_UNSPECIFIED":               0,
		"POLICY_RESOURCE_TYPE_RESOURCE_ENCODING":         1,
		"POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_SYNONYM": 2,
		"POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_MAPPING": 3,
		"POLICY_RESOURCE_TYPE_RESOURCE_ENCODING_GROUP":   4,
		"POLICY_RESOURCE_TYPE_SUBJECT_ENCODING_MAPPING":  5,
		"POLICY_RESOURCE_TYPE_KEY_ACCESS":                6,
		"POLICY_RESOURCE_TYPE_ATTRIBUTE_DEFINITION":      7,
		"POLICY_RESOURCE_TYPE_ATTRIBUTE_GROUP":           8,
	}
)

func (x PolicyResourceType) Enum() *PolicyResourceType {
	p := new(PolicyResourceType)
	*p = x
	return p
}

func (x PolicyResourceType) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (PolicyResourceType) Descriptor() protoreflect.EnumDescriptor {
	return file_common_v1_common_proto_enumTypes[0].Descriptor()
}

func (PolicyResourceType) Type() protoreflect.EnumType {
	return &file_common_v1_common_proto_enumTypes[0]
}

func (x PolicyResourceType) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use PolicyResourceType.Descriptor instead.
func (PolicyResourceType) EnumDescriptor() ([]byte, []int) {
	return file_common_v1_common_proto_rawDescGZIP(), []int{0}
}

// Struct to uniquely identify a resource with optional additional metadata
type ResourceDescriptor struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Type PolicyResourceType `protobuf:"varint,1,opt,name=type,proto3,enum=common.v1.PolicyResourceType" json:"type,omitempty"`
	// unique resource identifier
	Id int32 `protobuf:"varint,2,opt,name=id,proto3" json:"id,omitempty"`
	// resource version
	Version int32 `protobuf:"varint,3,opt,name=version,proto3" json:"version,omitempty"`
	// resource name
	Name string `protobuf:"bytes,4,opt,name=name,proto3" json:"name,omitempty"`
	// resource namespace; used to partition resources, support by namespace AuthN and enable federation
	Namespace string `protobuf:"bytes,5,opt,name=namespace,proto3" json:"namespace,omitempty"`
	// optional fully qualified name of the resource.  FQN is used to support direct references and to eliminate the need
	// for clients to compose an FQN at run time.
	//
	// the fqn may be specific to the resource type.
	Fqn string `protobuf:"bytes,6,opt,name=fqn,proto3" json:"fqn,omitempty"`
	// optional short description / label
	Labels map[string]string `protobuf:"bytes,7,rep,name=labels,proto3" json:"labels,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"bytes,2,opt,name=value,proto3"`
	// optional long description
	Description string `protobuf:"bytes,8,opt,name=description,proto3" json:"description,omitempty"`
	// optional list of resource dependencies
	Dependencies []*ResourceDependency `protobuf:"bytes,9,rep,name=dependencies,proto3" json:"dependencies,omitempty"`
}

func (x *ResourceDescriptor) Reset() {
	*x = ResourceDescriptor{}
	if protoimpl.UnsafeEnabled {
		mi := &file_common_v1_common_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ResourceDescriptor) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ResourceDescriptor) ProtoMessage() {}

func (x *ResourceDescriptor) ProtoReflect() protoreflect.Message {
	mi := &file_common_v1_common_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ResourceDescriptor.ProtoReflect.Descriptor instead.
func (*ResourceDescriptor) Descriptor() ([]byte, []int) {
	return file_common_v1_common_proto_rawDescGZIP(), []int{0}
}

func (x *ResourceDescriptor) GetType() PolicyResourceType {
	if x != nil {
		return x.Type
	}
	return PolicyResourceType_POLICY_RESOURCE_TYPE_UNSPECIFIED
}

func (x *ResourceDescriptor) GetId() int32 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *ResourceDescriptor) GetVersion() int32 {
	if x != nil {
		return x.Version
	}
	return 0
}

func (x *ResourceDescriptor) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *ResourceDescriptor) GetNamespace() string {
	if x != nil {
		return x.Namespace
	}
	return ""
}

func (x *ResourceDescriptor) GetFqn() string {
	if x != nil {
		return x.Fqn
	}
	return ""
}

func (x *ResourceDescriptor) GetLabels() map[string]string {
	if x != nil {
		return x.Labels
	}
	return nil
}

func (x *ResourceDescriptor) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *ResourceDescriptor) GetDependencies() []*ResourceDependency {
	if x != nil {
		return x.Dependencies
	}
	return nil
}

// Define a resource dependency
type ResourceDependency struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// namespace of referenced resource
	Namespace string `protobuf:"bytes,1,opt,name=namespace,proto3" json:"namespace,omitempty"`
	// version of reference resource
	Version string `protobuf:"bytes,2,opt,name=version,proto3" json:"version,omitempty"`
	// type of dependency
	Type PolicyResourceType `protobuf:"varint,3,opt,name=type,proto3,enum=common.v1.PolicyResourceType" json:"type,omitempty"`
}

func (x *ResourceDependency) Reset() {
	*x = ResourceDependency{}
	if protoimpl.UnsafeEnabled {
		mi := &file_common_v1_common_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ResourceDependency) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ResourceDependency) ProtoMessage() {}

func (x *ResourceDependency) ProtoReflect() protoreflect.Message {
	mi := &file_common_v1_common_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ResourceDependency.ProtoReflect.Descriptor instead.
func (*ResourceDependency) Descriptor() ([]byte, []int) {
	return file_common_v1_common_proto_rawDescGZIP(), []int{1}
}

func (x *ResourceDependency) GetNamespace() string {
	if x != nil {
		return x.Namespace
	}
	return ""
}

func (x *ResourceDependency) GetVersion() string {
	if x != nil {
		return x.Version
	}
	return ""
}

func (x *ResourceDependency) GetType() PolicyResourceType {
	if x != nil {
		return x.Type
	}
	return PolicyResourceType_POLICY_RESOURCE_TYPE_UNSPECIFIED
}

// Define a resource selector
type ResourceSelector struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// namespace of referenced resource
	Namespace string `protobuf:"bytes,1,opt,name=namespace,proto3" json:"namespace,omitempty"`
	// version of reference resource
	Version int32 `protobuf:"varint,2,opt,name=version,proto3" json:"version,omitempty"`
	// You can select a resource by name or by labels
	//
	// Types that are assignable to Selector:
	//
	//	*ResourceSelector_Name
	//	*ResourceSelector_LabelSelector_
	Selector isResourceSelector_Selector `protobuf_oneof:"selector"`
}

func (x *ResourceSelector) Reset() {
	*x = ResourceSelector{}
	if protoimpl.UnsafeEnabled {
		mi := &file_common_v1_common_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ResourceSelector) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ResourceSelector) ProtoMessage() {}

func (x *ResourceSelector) ProtoReflect() protoreflect.Message {
	mi := &file_common_v1_common_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ResourceSelector.ProtoReflect.Descriptor instead.
func (*ResourceSelector) Descriptor() ([]byte, []int) {
	return file_common_v1_common_proto_rawDescGZIP(), []int{2}
}

func (x *ResourceSelector) GetNamespace() string {
	if x != nil {
		return x.Namespace
	}
	return ""
}

func (x *ResourceSelector) GetVersion() int32 {
	if x != nil {
		return x.Version
	}
	return 0
}

func (m *ResourceSelector) GetSelector() isResourceSelector_Selector {
	if m != nil {
		return m.Selector
	}
	return nil
}

func (x *ResourceSelector) GetName() string {
	if x, ok := x.GetSelector().(*ResourceSelector_Name); ok {
		return x.Name
	}
	return ""
}

func (x *ResourceSelector) GetLabelSelector() *ResourceSelector_LabelSelector {
	if x, ok := x.GetSelector().(*ResourceSelector_LabelSelector_); ok {
		return x.LabelSelector
	}
	return nil
}

type isResourceSelector_Selector interface {
	isResourceSelector_Selector()
}

type ResourceSelector_Name struct {
	// name of referenced resource
	Name string `protobuf:"bytes,3,opt,name=name,proto3,oneof"`
}

type ResourceSelector_LabelSelector_ struct {
	// labels to match a against a resource
	LabelSelector *ResourceSelector_LabelSelector `protobuf:"bytes,4,opt,name=label_selector,json=labelSelector,proto3,oneof"`
}

func (*ResourceSelector_Name) isResourceSelector_Selector() {}

func (*ResourceSelector_LabelSelector_) isResourceSelector_Selector() {}

// Define a label selector
type ResourceSelector_LabelSelector struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// labels to match a against a resource
	Labels map[string]string `protobuf:"bytes,1,rep,name=labels,proto3" json:"labels,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"bytes,2,opt,name=value,proto3"`
}

func (x *ResourceSelector_LabelSelector) Reset() {
	*x = ResourceSelector_LabelSelector{}
	if protoimpl.UnsafeEnabled {
		mi := &file_common_v1_common_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ResourceSelector_LabelSelector) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ResourceSelector_LabelSelector) ProtoMessage() {}

func (x *ResourceSelector_LabelSelector) ProtoReflect() protoreflect.Message {
	mi := &file_common_v1_common_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ResourceSelector_LabelSelector.ProtoReflect.Descriptor instead.
func (*ResourceSelector_LabelSelector) Descriptor() ([]byte, []int) {
	return file_common_v1_common_proto_rawDescGZIP(), []int{2, 0}
}

func (x *ResourceSelector_LabelSelector) GetLabels() map[string]string {
	if x != nil {
		return x.Labels
	}
	return nil
}

var File_common_v1_common_proto protoreflect.FileDescriptor

var file_common_v1_common_proto_rawDesc = []byte{
	0x0a, 0x16, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2f, 0x76, 0x31, 0x2f, 0x63, 0x6f, 0x6d, 0x6d,
	0x6f, 0x6e, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x09, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e,
	0x2e, 0x76, 0x31, 0x1a, 0x1b, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74,
	0x65, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x22, 0x93, 0x07, 0x0a, 0x12, 0x52, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x44, 0x65, 0x73,
	0x63, 0x72, 0x69, 0x70, 0x74, 0x6f, 0x72, 0x12, 0x3e, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x1d, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76,
	0x31, 0x2e, 0x50, 0x6f, 0x6c, 0x69, 0x63, 0x79, 0x52, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65,
	0x54, 0x79, 0x70, 0x65, 0x42, 0x0b, 0xba, 0x48, 0x08, 0xc8, 0x01, 0x01, 0x82, 0x01, 0x02, 0x10,
	0x01, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x05, 0x52, 0x02, 0x69, 0x64, 0x12, 0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69,
	0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01, 0x28, 0x05, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x12, 0x1a, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x42,
	0x06, 0xba, 0x48, 0x03, 0xc8, 0x01, 0x01, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x81, 0x04,
	0x0a, 0x09, 0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28,
	0x09, 0x42, 0xe2, 0x03, 0xba, 0x48, 0xde, 0x03, 0xba, 0x01, 0xd2, 0x03, 0x0a, 0x10, 0x6e, 0x61,
	0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x5f, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x12, 0xea,
	0x02, 0x4e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x20, 0x6d, 0x75, 0x73, 0x74, 0x20,
	0x62, 0x65, 0x20, 0x61, 0x20, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x68, 0x6f, 0x73, 0x74, 0x6e,
	0x61, 0x6d, 0x65, 0x2e, 0x20, 0x49, 0x74, 0x20, 0x73, 0x68, 0x6f, 0x75, 0x6c, 0x64, 0x20, 0x69,
	0x6e, 0x63, 0x6c, 0x75, 0x64, 0x65, 0x20, 0x61, 0x74, 0x20, 0x6c, 0x65, 0x61, 0x73, 0x74, 0x20,
	0x6f, 0x6e, 0x65, 0x20, 0x64, 0x6f, 0x74, 0x2c, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x65, 0x61,
	0x63, 0x68, 0x20, 0x73, 0x65, 0x67, 0x6d, 0x65, 0x6e, 0x74, 0x20, 0x28, 0x6c, 0x61, 0x62, 0x65,
	0x6c, 0x29, 0x20, 0x73, 0x74, 0x61, 0x72, 0x74, 0x69, 0x6e, 0x67, 0x20, 0x61, 0x6e, 0x64, 0x20,
	0x65, 0x6e, 0x64, 0x69, 0x6e, 0x67, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x61, 0x6e, 0x20, 0x61,
	0x6c, 0x70, 0x68, 0x61, 0x6e, 0x75, 0x6d, 0x65, 0x72, 0x69, 0x63, 0x20, 0x63, 0x68, 0x61, 0x72,
	0x61, 0x63, 0x74, 0x65, 0x72, 0x2e, 0x20, 0x45, 0x61, 0x63, 0x68, 0x20, 0x6c, 0x61, 0x62, 0x65,
	0x6c, 0x20, 0x6d, 0x75, 0x73, 0x74, 0x20, 0x62, 0x65, 0x20, 0x31, 0x20, 0x74, 0x6f, 0x20, 0x36,
	0x33, 0x20, 0x63, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x73, 0x20, 0x6c, 0x6f, 0x6e,
	0x67, 0x2c, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x77, 0x69, 0x6e, 0x67, 0x20, 0x68, 0x79, 0x70, 0x68,
	0x65, 0x6e, 0x73, 0x20, 0x62, 0x75, 0x74, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x61, 0x73, 0x20, 0x74,
	0x68, 0x65, 0x20, 0x66, 0x69, 0x72, 0x73, 0x74, 0x20, 0x6f, 0x72, 0x20, 0x6c, 0x61, 0x73, 0x74,
	0x20, 0x63, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x2e, 0x20, 0x54, 0x68, 0x65, 0x20,
	0x74, 0x6f, 0x70, 0x2d, 0x6c, 0x65, 0x76, 0x65, 0x6c, 0x20, 0x64, 0x6f, 0x6d, 0x61, 0x69, 0x6e,
	0x20, 0x28, 0x74, 0x68, 0x65, 0x20, 0x6c, 0x61, 0x73, 0x74, 0x20, 0x73, 0x65, 0x67, 0x6d, 0x65,
	0x6e, 0x74, 0x20, 0x61, 0x66, 0x74, 0x65, 0x72, 0x20, 0x74, 0x68, 0x65, 0x20, 0x66, 0x69, 0x6e,
	0x61, 0x6c, 0x20, 0x64, 0x6f, 0x74, 0x29, 0x20, 0x6d, 0x75, 0x73, 0x74, 0x20, 0x63, 0x6f, 0x6e,
	0x73, 0x69, 0x73, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x61, 0x74, 0x20, 0x6c, 0x65, 0x61, 0x73, 0x74,
	0x20, 0x74, 0x77, 0x6f, 0x20, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x62, 0x65, 0x74, 0x69, 0x63, 0x20,
	0x63, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x73, 0x2e, 0x1a, 0x51, 0x74, 0x68, 0x69,
	0x73, 0x2e, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x65, 0x73, 0x28, 0x27, 0x5e, 0x28, 0x5b, 0x61, 0x2d,
	0x7a, 0x41, 0x2d, 0x5a, 0x30, 0x2d, 0x39, 0x5d, 0x28, 0x5b, 0x61, 0x2d, 0x7a, 0x41, 0x2d, 0x5a,
	0x30, 0x2d, 0x39, 0x5c, 0x5c, 0x2d, 0x5d, 0x7b, 0x30, 0x2c, 0x36, 0x31, 0x7d, 0x5b, 0x61, 0x2d,
	0x7a, 0x41, 0x2d, 0x5a, 0x30, 0x2d, 0x39, 0x5d, 0x29, 0x3f, 0x5c, 0x5c, 0x2e, 0x29, 0x2b, 0x5b,
	0x61, 0x2d, 0x7a, 0x41, 0x2d, 0x5a, 0x5d, 0x7b, 0x32, 0x2c, 0x7d, 0x24, 0x27, 0x29, 0xc8, 0x01,
	0x01, 0x72, 0x03, 0x18, 0xfd, 0x01, 0x52, 0x09, 0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63,
	0x65, 0x12, 0x10, 0x0a, 0x03, 0x66, 0x71, 0x6e, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03,
	0x66, 0x71, 0x6e, 0x12, 0x41, 0x0a, 0x06, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x73, 0x18, 0x07, 0x20,
	0x03, 0x28, 0x0b, 0x32, 0x29, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x2e,
	0x52, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x44, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74,
	0x6f, 0x72, 0x2e, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x73, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x06,
	0x6c, 0x61, 0x62, 0x65, 0x6c, 0x73, 0x12, 0x20, 0x0a, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69,
	0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x08, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x64, 0x65, 0x73,
	0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x41, 0x0a, 0x0c, 0x64, 0x65, 0x70, 0x65,
	0x6e, 0x64, 0x65, 0x6e, 0x63, 0x69, 0x65, 0x73, 0x18, 0x09, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1d,
	0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x2e, 0x52, 0x65, 0x73, 0x6f, 0x75,
	0x72, 0x63, 0x65, 0x44, 0x65, 0x70, 0x65, 0x6e, 0x64, 0x65, 0x6e, 0x63, 0x79, 0x52, 0x0c, 0x64,
	0x65, 0x70, 0x65, 0x6e, 0x64, 0x65, 0x6e, 0x63, 0x69, 0x65, 0x73, 0x1a, 0x39, 0x0a, 0x0b, 0x4c,
	0x61, 0x62, 0x65, 0x6c, 0x73, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65,
	0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05,
	0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x76, 0x61, 0x6c,
	0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x22, 0x7f, 0x0a, 0x12, 0x52, 0x65, 0x73, 0x6f, 0x75, 0x72,
	0x63, 0x65, 0x44, 0x65, 0x70, 0x65, 0x6e, 0x64, 0x65, 0x6e, 0x63, 0x79, 0x12, 0x1c, 0x0a, 0x09,
	0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x76, 0x65,
	0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x76, 0x65, 0x72,
	0x73, 0x69, 0x6f, 0x6e, 0x12, 0x31, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x0e, 0x32, 0x1d, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x2e, 0x50,
	0x6f, 0x6c, 0x69, 0x63, 0x79, 0x52, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x54, 0x79, 0x70,
	0x65, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x22, 0xdc, 0x02, 0x0a, 0x10, 0x52, 0x65, 0x73, 0x6f,
	0x75, 0x72, 0x63, 0x65, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x12, 0x1c, 0x0a, 0x09,
	0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x76, 0x65,
	0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x07, 0x76, 0x65, 0x72,
	0x73, 0x69, 0x6f, 0x6e, 0x12, 0x14, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x09, 0x48, 0x00, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x52, 0x0a, 0x0e, 0x6c, 0x61,
	0x62, 0x65, 0x6c, 0x5f, 0x73, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x18, 0x04, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x29, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x2e, 0x52,
	0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x2e,
	0x4c, 0x61, 0x62, 0x65, 0x6c, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x48, 0x00, 0x52,
	0x0d, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x1a, 0x99,
	0x01, 0x0a, 0x0d, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72,
	0x12, 0x4d, 0x0a, 0x06, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b,
	0x32, 0x35, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x2e, 0x52, 0x65, 0x73,
	0x6f, 0x75, 0x72, 0x63, 0x65, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x2e, 0x4c, 0x61,
	0x62, 0x65, 0x6c, 0x53, 0x65, 0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x2e, 0x4c, 0x61, 0x62, 0x65,
	0x6c, 0x73, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x06, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x73, 0x1a,
	0x39, 0x0a, 0x0b, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x73, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x12, 0x10,
	0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79,
	0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x42, 0x0a, 0x0a, 0x08, 0x73, 0x65,
	0x6c, 0x65, 0x63, 0x74, 0x6f, 0x72, 0x2a, 0xb1, 0x03, 0x0a, 0x12, 0x50, 0x6f, 0x6c, 0x69, 0x63,
	0x79, 0x52, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x54, 0x79, 0x70, 0x65, 0x12, 0x24, 0x0a,
	0x20, 0x50, 0x4f, 0x4c, 0x49, 0x43, 0x59, 0x5f, 0x52, 0x45, 0x53, 0x4f, 0x55, 0x52, 0x43, 0x45,
	0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x55, 0x4e, 0x53, 0x50, 0x45, 0x43, 0x49, 0x46, 0x49, 0x45,
	0x44, 0x10, 0x00, 0x12, 0x2a, 0x0a, 0x26, 0x50, 0x4f, 0x4c, 0x49, 0x43, 0x59, 0x5f, 0x52, 0x45,
	0x53, 0x4f, 0x55, 0x52, 0x43, 0x45, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x52, 0x45, 0x53, 0x4f,
	0x55, 0x52, 0x43, 0x45, 0x5f, 0x45, 0x4e, 0x43, 0x4f, 0x44, 0x49, 0x4e, 0x47, 0x10, 0x01, 0x12,
	0x32, 0x0a, 0x2e, 0x50, 0x4f, 0x4c, 0x49, 0x43, 0x59, 0x5f, 0x52, 0x45, 0x53, 0x4f, 0x55, 0x52,
	0x43, 0x45, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x52, 0x45, 0x53, 0x4f, 0x55, 0x52, 0x43, 0x45,
	0x5f, 0x45, 0x4e, 0x43, 0x4f, 0x44, 0x49, 0x4e, 0x47, 0x5f, 0x53, 0x59, 0x4e, 0x4f, 0x4e, 0x59,
	0x4d, 0x10, 0x02, 0x12, 0x32, 0x0a, 0x2e, 0x50, 0x4f, 0x4c, 0x49, 0x43, 0x59, 0x5f, 0x52, 0x45,
	0x53, 0x4f, 0x55, 0x52, 0x43, 0x45, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x52, 0x45, 0x53, 0x4f,
	0x55, 0x52, 0x43, 0x45, 0x5f, 0x45, 0x4e, 0x43, 0x4f, 0x44, 0x49, 0x4e, 0x47, 0x5f, 0x4d, 0x41,
	0x50, 0x50, 0x49, 0x4e, 0x47, 0x10, 0x03, 0x12, 0x30, 0x0a, 0x2c, 0x50, 0x4f, 0x4c, 0x49, 0x43,
	0x59, 0x5f, 0x52, 0x45, 0x53, 0x4f, 0x55, 0x52, 0x43, 0x45, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f,
	0x52, 0x45, 0x53, 0x4f, 0x55, 0x52, 0x43, 0x45, 0x5f, 0x45, 0x4e, 0x43, 0x4f, 0x44, 0x49, 0x4e,
	0x47, 0x5f, 0x47, 0x52, 0x4f, 0x55, 0x50, 0x10, 0x04, 0x12, 0x31, 0x0a, 0x2d, 0x50, 0x4f, 0x4c,
	0x49, 0x43, 0x59, 0x5f, 0x52, 0x45, 0x53, 0x4f, 0x55, 0x52, 0x43, 0x45, 0x5f, 0x54, 0x59, 0x50,
	0x45, 0x5f, 0x53, 0x55, 0x42, 0x4a, 0x45, 0x43, 0x54, 0x5f, 0x45, 0x4e, 0x43, 0x4f, 0x44, 0x49,
	0x4e, 0x47, 0x5f, 0x4d, 0x41, 0x50, 0x50, 0x49, 0x4e, 0x47, 0x10, 0x05, 0x12, 0x23, 0x0a, 0x1f,
	0x50, 0x4f, 0x4c, 0x49, 0x43, 0x59, 0x5f, 0x52, 0x45, 0x53, 0x4f, 0x55, 0x52, 0x43, 0x45, 0x5f,
	0x54, 0x59, 0x50, 0x45, 0x5f, 0x4b, 0x45, 0x59, 0x5f, 0x41, 0x43, 0x43, 0x45, 0x53, 0x53, 0x10,
	0x06, 0x12, 0x2d, 0x0a, 0x29, 0x50, 0x4f, 0x4c, 0x49, 0x43, 0x59, 0x5f, 0x52, 0x45, 0x53, 0x4f,
	0x55, 0x52, 0x43, 0x45, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x41, 0x54, 0x54, 0x52, 0x49, 0x42,
	0x55, 0x54, 0x45, 0x5f, 0x44, 0x45, 0x46, 0x49, 0x4e, 0x49, 0x54, 0x49, 0x4f, 0x4e, 0x10, 0x07,
	0x12, 0x28, 0x0a, 0x24, 0x50, 0x4f, 0x4c, 0x49, 0x43, 0x59, 0x5f, 0x52, 0x45, 0x53, 0x4f, 0x55,
	0x52, 0x43, 0x45, 0x5f, 0x54, 0x59, 0x50, 0x45, 0x5f, 0x41, 0x54, 0x54, 0x52, 0x49, 0x42, 0x55,
	0x54, 0x45, 0x5f, 0x47, 0x52, 0x4f, 0x55, 0x50, 0x10, 0x08, 0x42, 0x9b, 0x01, 0x0a, 0x0d, 0x63,
	0x6f, 0x6d, 0x2e, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x42, 0x0b, 0x43, 0x6f,
	0x6d, 0x6d, 0x6f, 0x6e, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x38, 0x67, 0x69, 0x74,
	0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6f, 0x70, 0x65, 0x6e, 0x74, 0x64, 0x66, 0x2f,
	0x6f, 0x70, 0x65, 0x6e, 0x74, 0x64, 0x66, 0x2d, 0x76, 0x32, 0x2d, 0x70, 0x6f, 0x63, 0x2f, 0x73,
	0x64, 0x6b, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2f, 0x76, 0x31, 0x3b, 0x63, 0x6f, 0x6d,
	0x6d, 0x6f, 0x6e, 0x76, 0x31, 0xa2, 0x02, 0x03, 0x43, 0x58, 0x58, 0xaa, 0x02, 0x09, 0x43, 0x6f,
	0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x56, 0x31, 0xca, 0x02, 0x09, 0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e,
	0x5c, 0x56, 0x31, 0xe2, 0x02, 0x15, 0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x5c, 0x56, 0x31, 0x5c,
	0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x0a, 0x43, 0x6f,
	0x6d, 0x6d, 0x6f, 0x6e, 0x3a, 0x3a, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_common_v1_common_proto_rawDescOnce sync.Once
	file_common_v1_common_proto_rawDescData = file_common_v1_common_proto_rawDesc
)

func file_common_v1_common_proto_rawDescGZIP() []byte {
	file_common_v1_common_proto_rawDescOnce.Do(func() {
		file_common_v1_common_proto_rawDescData = protoimpl.X.CompressGZIP(file_common_v1_common_proto_rawDescData)
	})
	return file_common_v1_common_proto_rawDescData
}

var file_common_v1_common_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_common_v1_common_proto_msgTypes = make([]protoimpl.MessageInfo, 6)
var file_common_v1_common_proto_goTypes = []interface{}{
	(PolicyResourceType)(0),                // 0: common.v1.PolicyResourceType
	(*ResourceDescriptor)(nil),             // 1: common.v1.ResourceDescriptor
	(*ResourceDependency)(nil),             // 2: common.v1.ResourceDependency
	(*ResourceSelector)(nil),               // 3: common.v1.ResourceSelector
	nil,                                    // 4: common.v1.ResourceDescriptor.LabelsEntry
	(*ResourceSelector_LabelSelector)(nil), // 5: common.v1.ResourceSelector.LabelSelector
	nil,                                    // 6: common.v1.ResourceSelector.LabelSelector.LabelsEntry
}
var file_common_v1_common_proto_depIdxs = []int32{
	0, // 0: common.v1.ResourceDescriptor.type:type_name -> common.v1.PolicyResourceType
	4, // 1: common.v1.ResourceDescriptor.labels:type_name -> common.v1.ResourceDescriptor.LabelsEntry
	2, // 2: common.v1.ResourceDescriptor.dependencies:type_name -> common.v1.ResourceDependency
	0, // 3: common.v1.ResourceDependency.type:type_name -> common.v1.PolicyResourceType
	5, // 4: common.v1.ResourceSelector.label_selector:type_name -> common.v1.ResourceSelector.LabelSelector
	6, // 5: common.v1.ResourceSelector.LabelSelector.labels:type_name -> common.v1.ResourceSelector.LabelSelector.LabelsEntry
	6, // [6:6] is the sub-list for method output_type
	6, // [6:6] is the sub-list for method input_type
	6, // [6:6] is the sub-list for extension type_name
	6, // [6:6] is the sub-list for extension extendee
	0, // [0:6] is the sub-list for field type_name
}

func init() { file_common_v1_common_proto_init() }
func file_common_v1_common_proto_init() {
	if File_common_v1_common_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_common_v1_common_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ResourceDescriptor); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_common_v1_common_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ResourceDependency); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_common_v1_common_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ResourceSelector); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_common_v1_common_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ResourceSelector_LabelSelector); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_common_v1_common_proto_msgTypes[2].OneofWrappers = []interface{}{
		(*ResourceSelector_Name)(nil),
		(*ResourceSelector_LabelSelector_)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_common_v1_common_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   6,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_common_v1_common_proto_goTypes,
		DependencyIndexes: file_common_v1_common_proto_depIdxs,
		EnumInfos:         file_common_v1_common_proto_enumTypes,
		MessageInfos:      file_common_v1_common_proto_msgTypes,
	}.Build()
	File_common_v1_common_proto = out.File
	file_common_v1_common_proto_rawDesc = nil
	file_common_v1_common_proto_goTypes = nil
	file_common_v1_common_proto_depIdxs = nil
}
