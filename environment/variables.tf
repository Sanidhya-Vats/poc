variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "aks_node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
}

variable "aks_dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  
}
variable "aks_vm_size" {
  description = "The size of the virtual machines in the AKS cluster"
  type        = string
  default     = "Standard_DS2_v3"
  
}


variable "acr_registry_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "The SKU for the Azure Container Registry"
  type        = string
}

variable "mysql_server_name" {
  description = "The name of the MySQL Flexible Server"
  type        = string
}

variable "mysql_admin_username" {
  description = "The admin username for the MySQL server"
  type        = string
}
variable "mysql_admin_password" {
  description = "The admin password for the MySQL server"
  type        = string
  sensitive   = true
  
}
variable "mysql_version" {
  description = "The version of the MySQL server"
  type        = string
  default     = "8.0"
}

variable "mysql_sku_name" {
  description = "The SKU name for the MySQL server"
  type        = string
  default     = "B_Gen5_1"
  
}
variable "resource_group_name" {
  description = "The name of the resource group where resources will be created"
  type        = string
  
}
variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  
}