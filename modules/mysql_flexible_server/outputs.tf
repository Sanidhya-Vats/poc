output "mysql_server_name" {
  value = azurerm_mysql_flexible_server.example.name
}

output "mysql_server_admin_username" {
  value = azurerm_mysql_flexible_server.example.administrator_login
}

output "mysql_server_connection_string" {
  value = "mysql://${azurerm_mysql_flexible_server.example.administrator_login}:${azurerm_mysql_flexible_server.example.administrator_password}@${azurerm_mysql_flexible_server.example.fqdn}"
}
output "mysql_server_id" {
  value = azurerm_mysql_flexible_server.example.id
}

output "mysql_server_fqdn" {
  value = azurerm_mysql_flexible_server.example.fqdn
}