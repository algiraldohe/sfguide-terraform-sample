terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.76"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
}

resource "snowflake_schema" "schema" {
  database = "VINDOW_POC"
  name     = "TF_DEMO"
  comment  = "Schema coming from terraform"

  is_transient        = false
  is_managed          = false
}
