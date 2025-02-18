package db

import (
	"context"
	"database/sql"
	"fmt"
	"log/slog"
	"net"

	sq "github.com/Masterminds/squirrel"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/jackc/pgx/v5/stdlib"
)

type Table struct {
	name       string
	schema     string
	withSchema bool
}

func NewTableWithSchema(schema string) func(name string) Table {
	s := schema
	return func(name string) Table {
		return Table{
			name:       name,
			schema:     s,
			withSchema: true,
		}
	}
}

var NewTable func(name string) Table

func (t Table) WithoutSchema() Table {
	nT := NewTableWithSchema(t.schema)(t.name)
	nT.withSchema = false
	return nT
}

func (t Table) Name() string {
	if t.withSchema {
		return t.schema + "." + string(t.name)
	}
	return string(t.name)
}

func (t Table) Field(field string) string {
	return t.Name() + "." + field
}

// We can rename this but wanted to get mocks working.
type PgxIface interface {
	Acquire(ctx context.Context) (*pgxpool.Conn, error)
	Exec(context.Context, string, ...any) (pgconn.CommandTag, error)
	QueryRow(context.Context, string, ...any) pgx.Row
	Query(context.Context, string, ...any) (pgx.Rows, error)
	Ping(context.Context) error
	Close()
	Config() *pgxpool.Config
}

type Config struct {
	Host          string `yaml:"host" default:"localhost"`
	Port          int    `yaml:"port" default:"5432"`
	Database      string `yaml:"database" default:"opentdf"`
	User          string `yaml:"user" default:"postgres"`
	Password      string `yaml:"password" default:"changeme"`
	RunMigrations bool   `yaml:"runMigrations" default:"true"`
	SSLMode       string `yaml:"sslmode" default:"prefer"`
	Schema        string `yaml:"schema" default:"opentdf"`
}

type Client struct {
	Pgx    PgxIface
	config Config

	// This is the stdlib connection that is used for transactions
	SqlDB *sql.DB
}

func NewClient(config Config) (*Client, error) {
	c := Client{
		config: config,
	}

	dbConfig, err := pgxpool.ParseConfig(config.buildURL())
	if err != nil {
		return nil, fmt.Errorf("failed to parse pgx config: %w", err)
	}

	pool, err := pgxpool.NewWithConfig(context.Background(), dbConfig)
	if err != nil {
		return nil, fmt.Errorf("failed to create pgxpool: %w", err)
	}
	c.Pgx = pool
	// We need to create a stdlib connection for transactions
	c.SqlDB = stdlib.OpenDBFromPool(pool)

	// Connect to the database to verify the connection
	if err := c.Pgx.Ping(context.Background()); err != nil {
		return nil, fmt.Errorf("failed to connect to database: %w", err)
	}

	// Run migrations
	slog.Info("running database migrations")
	appliedMigrations, err := c.RunMigrations(context.Background())
	if err != nil {
		return nil, fmt.Errorf("issue running database migrations: %w", err)
	}
	slog.Info("database migrations complete", slog.Int("applied", appliedMigrations))

	NewTable = NewTableWithSchema(config.Schema)

	return &c, nil
}

func (c *Client) Close() {
	c.Pgx.Close()
	c.SqlDB.Close()
}

func (c Config) buildURL() string {
	return fmt.Sprintf("postgres://%s:%s@%s/%s?sslmode=%s",
		c.User,
		c.Password,
		net.JoinHostPort(c.Host, fmt.Sprint(c.Port)),
		c.Database,
		c.SSLMode,
	)
}

// Common function for all queryRow calls
func (c Client) QueryRow(ctx context.Context, sql string, args []interface{}) (pgx.Row, error) {
	slog.Debug("sql", slog.String("sql", sql), slog.Any("args", args))
	return c.Pgx.QueryRow(ctx, sql, args...), nil
}

// Common function for all query calls
func (c Client) Query(ctx context.Context, sql string, args []interface{}) (pgx.Rows, error) {
	slog.Debug("sql", slog.String("sql", sql), slog.Any("args", args))
	r, e := c.Pgx.Query(ctx, sql, args...)
	if e != nil {
		return nil, WrapIfKnownInvalidQueryErr(e)
	}
	return r, nil
}

// Common function for all exec calls
func (c Client) Exec(ctx context.Context, sql string, args []interface{}) error {
	slog.Debug("sql", slog.String("sql", sql), slog.Any("args", args))
	tag, err := c.Pgx.Exec(ctx, sql, args...)
	if err != nil {
		return WrapIfKnownInvalidQueryErr(err)
	}

	if tag.RowsAffected() == 0 {
		return WrapIfKnownInvalidQueryErr(pgx.ErrNoRows)
	}

	return nil
}

//
// Helper functions for building SQL
//

// Postgres uses $1, $2, etc. for placeholders
func NewStatementBuilder() sq.StatementBuilderType {
	return sq.StatementBuilder.PlaceholderFormat(sq.Dollar)
}
