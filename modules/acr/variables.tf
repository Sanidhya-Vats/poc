variable "registry_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Enable admin user for the Azure Container Registry."
  type        = bool
  default     = false
}
variable "resource_group_name" {
  description = "The name of the resource group where the Azure Container Registry will be created."
  type        = string
}
variable "location" {
  description = "The Azure region where the Azure Container Registry will be created."
  type        = string
} 
variable "service_principal_id" {
  description = "The service principal ID that will be granted access to the Azure Container Registry."
  type        = string
}