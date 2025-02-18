# Configuration Guide

This guide provides details about the configuration setup for our application, including logger, services (specifically entitlements), and server configurations.

- [Logger Configuration](#logger-configuration)
- [Server Configuration](#server-configuration)
- [Database Configuration](#database-configuration)
- [OPA Configuration](#opa-configuration)
-[Services Configuration](#services-configuration)

## Logger Configuration

The logger configuration is used to define how the application logs its output.

| Field | Description | Default |
| --- | --- | --- |
| `level` | The logging level. | `info` |
| `type` | The format of the log output. | `json` |
| `output` | The output destination for logs. | `stdout` |

Example:

```yaml
logger:
  level: debug
  type: text
  output: stdout
```

## Server Configuration

The server configuration is used to define how the application runs its server.

| Field | Description | Default |
| --- | --- | --- |
| `port` | The port number for the server. | `9000` |
| `host` | The host address for the server. | `""` |
| `grpc.reflection` | The configuration for the grpc server. | `true` |
| `tls.enabled` | Enable tls. | `false` |
| `tls.cert` | The path to the tls certificate. | |
| `tls.key` | The path to the tls key. | |
| `auth.audience` | The audience for the IDP. | |
| `auth.issuer` | The issuer for the IDP. | |
| `auth.clients` | A list of client id's that are allowed. | |

Example:

```yaml
server:
  grpc:
    reflection: true
  port: 8081
  tls:
    enabled: true
    cert: /path/to/cert
    key: /path/to/key
  auth:
    enabled: true
    audience: https://example.com
    issuer: https://example.com
    clients:
      - client_id
      - client_id2
```

## Database Configuration

The database configuration is used to define how the application connects to its database.

| Field | Description | Default |
| --- | --- | --- |
| `host` | The host address for the database. | `localhost` |
| `port` | The port number for the database. | `5432` |
| `database` | The name of the database. | `opentdf` |
| `user` | The username for the database. | `postgres` |
| `password` | The password for the database. | `changeme` |
| `sslmode` | The ssl mode for the database | `prefer` |
| `schema` | The schema for the database. | `opentdf` |
| `runMigration` | Whether to run the database migration or not. | `true` |

Example:

```yaml
db:
  host: localhost
  port: 5432
  database: opentdf
  user: postgres
  password: changeme
  sslmode: require
  schema: opentdf
  runMigration: false
```

## OPA Configuration

| Field | Description | Default |
| --- | --- | --- |
| `embedded` | Whether to use the embedded OPA Bundle server or not. This is only used for local development. | `false` |
| `path` | The path to the OPA configuration file. | `./opa/opa.yaml` |

Example:

```yaml
opa:
  embedded: true # Only for local development
  path: ./opa/opa.yaml
```

## Services Configuration

### Key Access Server (KAS)

| Field | Description | Default |
| --- | --- | --- |
| `enabled` | Enable the Key Access Server | `true` |

Example:

```yaml
services:
  kas:
    enabled: true
```

### Policy

| Field | Description | Default |
| --- | --- | --- |
| `enabled` | Enable the Policy Service | `true` |

Example:

```yaml
services:
  policy:
    enabled: true
```

### Authorization

| Field | Description | Default |
| --- | --- | --- |
| `enabled` | Enable the Authorization
