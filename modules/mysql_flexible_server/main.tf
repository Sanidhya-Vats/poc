resource "azurerm_mysql_flexible_server" "example" {
  name                   =var.mysql_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = var.mysql_admin_username
  administrator_password = var.mysql_admin_password
  backup_retention_days  = 7
  version = var.mysql_version

  sku_name               =var.sku_name

}

# resource "azurerm_mysql_flexible_server_database" "default" {
#   name                = var.database_name
#   resource_group_name = var.resource_group_name
#   server_name         = azurerm_mysql_flexible_server.mysql_server.name
# }

