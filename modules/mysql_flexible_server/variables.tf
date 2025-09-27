

variable "mysql_admin_username" {
  description = "The administrator username for the MySQL server."
  type        = string
}

variable "mysql_admin_password" {
  description = "The administrator password for the MySQL server."
  type        = string
  sensitive   = true
}

variable "mysql_version" {
  description = "The version of the MySQL server."
  type        = string
  default     = "8.0"
}
variable "mysql_server_name" {
  
}


variable "sku_name" {
  description = "The SKU name for the MySQL server."
  type        = string
  default     = "B_Gen5_1"
}


variable "location" {
  description = "The Azure region where the MySQL server will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the MySQL server will be created."
  type        = string
}