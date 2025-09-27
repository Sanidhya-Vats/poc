output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

# output "aks_cluster_endpoint" {
#   value = azurerm_kubernetes_cluster.aks.kube_admin_config.0.host
# }

# output "aks_cluster_kube_config" {
#   value = azurerm_kubernetes_cluster.aks.kube_admin_config.0.raw_kube_config
# }
output "service_principal_id" {
  value = azurerm_kubernetes_cluster.aks.identity.0.principal_id
  
}