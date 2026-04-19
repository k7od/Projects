resource "azurerm_mssql_server" "sql" {
  name                         = "sql-capstone-2026"
  resource_group_name          = rg_sb_eastus_335189_1_177659538673
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = "StrongPassword123!"
}
resource "azurerm_mssql_database" "db" {
  name      = "capstone-db"
  server_id = azurerm_mssql_server.sql.id
  sku_name  = "Basic"
}