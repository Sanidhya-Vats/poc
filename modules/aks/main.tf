resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size   = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }
}

# resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
#   name                  = "nodepool"
#   kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
#   vm_size              = var.vm_size
#   node_count           = var.node_count
#   min_count            = var.min_count
#   max_count            = var.max_count
# }

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_admin_config
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}