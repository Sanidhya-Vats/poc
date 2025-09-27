

module "rg" {
  source = "../modules/rg"
  resource_group_name = var.resource_group_name
  location = var.location
}
module "aks" {
  depends_on = [ module.rg ]
  source              = "../modules/aks"
  cluster_name       = var.aks_cluster_name
  node_count         = var.aks_node_count
  dns_prefix         = var.aks_dns_prefix
  location           = var.location
  resource_group_name = var.resource_group_name
  vm_size            = var.aks_vm_size
}

module "acr" {
  depends_on = [ module.aks ]
  source          = "../modules/acr"
  registry_name   = var.acr_registry_name
  sku             = var.acr_sku
  location        = var.location
  resource_group_name = var.resource_group_name
  service_principal_id = module.aks.service_principal_id
}

module "mysql_flexible_server" {
    depends_on = [ module.rg ]
  source                = "../modules/mysql_flexible_server"
 
  mysql_admin_username = var.mysql_admin_username
  mysql_admin_password = var.mysql_admin_password
  mysql_version              = var.mysql_version
  sku_name             = var.mysql_sku_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  mysql_server_name    = var.mysql_server_name

}

