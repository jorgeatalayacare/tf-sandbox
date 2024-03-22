terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.22.0"
    }
  }
}

provider "postgresql" {
  alias    = "santiago"
  host     = "localhost"
  port     = 5432
  username = "postgres"
  password = var.instance_password
  sslmode  = "disable"
}

provider "postgresql" {
  alias    = "montreal"
  host     = "localhost"
  port     = 5433
  username = "postgres"
  password = var.instance_password
  sslmode  = "disable"
}

provider "postgresql" {
  alias    = "milan"
  host     = "localhost"
  port     = 5434
  username = "postgres"
  password = var.instance_password
  sslmode  = "disable"
}