resource "azurerm_postgresql_server" "example" {
  name                = "group1-postgresql-server"
  location            = "westeurope"
  resource_group_name = "group1-tf"

  sku_name = "B_Gen5_2"

  storage_mb            = 5120
  backup_retention_days = 7
  auto_grow_enabled     = false

  administrator_login          = "safeadmin"
  administrator_login_password = "safepassword123!"
  version                      = "9.5"
  ssl_enforcement_enabled      = true
}

resource "azurerm_postgresql_database" "example" {
  name                = "task_listing_app_db"
  resource_group_name = "group1-tf"
  server_name         = azurerm_postgresql_server.example.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
