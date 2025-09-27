terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        
        }
    }
    
    required_version = ">= 1.0"
backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""
  }
  
}
provider "azurerm" {
  features {}
  subscription_id = "a4b25e75-be62-4cb6-bcb5-48e2492054ab"
}