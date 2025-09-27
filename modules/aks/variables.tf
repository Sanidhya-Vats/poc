variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
  default     = 1
}

# variable "kubernetes_version" {
#   description = "The version of Kubernetes to use"
#   type        = string
#   default     = "1.21.2"
# }

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}
variable "location" {
  description = "The Azure region where the AKS cluster will be created"
  type        = string
  
}
variable "resource_group_name" {
  description = "The name of the resource group where the AKS cluster will be created"
  type        = string
}
variable "vm_size" {
  description = "The size of the virtual machines in the AKS cluster"
  type        = string
  default     = "Standard_DS2_v3"
}
# variable "min_count" {
#   description = "The minimum number of nodes in the AKS node pool"
#   type        = number
#   default     = 1
# }
# variable "max_count" {
#   description = "The maximum number of nodes in the AKS node pool"
#   type        = number
#   default     = 2
# }
