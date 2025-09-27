output "aks_cluster_name" {
  value = module.aks.cluster_name
}



output "acr_login_server" {
  value = module.acr.acr_login_server
}

output "mysql_server_connection_string" {
  value = module.mysql_flexible_server.mysql_server_connection_string
  sensitive = true
}


