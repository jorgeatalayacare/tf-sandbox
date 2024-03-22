# Main module configuration

# Create PostgreSQL instances
resource "postgresql_database" "santiago_dbs" {
  for_each          = toset(var.dbs)
  name              = each.key
  provider          = postgresql.santiago
  lc_collate        = "C"
  connection_limit  = -1
  allow_connections = true
}

resource "postgresql_database" "montreal_dbs" {
  for_each          = toset(var.dbs)
  name              = each.key
  provider          = postgresql.montreal
  lc_collate        = "C"
  connection_limit  = -1
  allow_connections = true
}

resource "postgresql_database" "milan_dbs" {
  for_each          = toset(var.dbs)
  name              = each.key
  provider          = postgresql.milan
  lc_collate        = "C"
  connection_limit  = -1
  allow_connections = true
}

resource "postgresql_role" "milan_roles" {
  provider = postgresql.milan
  for_each = toset(var.roles)
  name     = each.key
  login    = true
}

resource "postgresql_role" "montreal_roles" {
  provider = postgresql.montreal
  for_each = toset(var.roles)
  name     = each.key
  login    = true
}

resource "postgresql_role" "santiago_roles" {
  provider = postgresql.santiago
  for_each = toset(var.roles)
  name     = each.key
  login    = true
}