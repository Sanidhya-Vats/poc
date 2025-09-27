resource "azurerm_container_registry" "acr" {
  name                = var.registry_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled

 
}

resource "azurerm_role_assignment" "acr_pull" {
  principal_id   = var.service_principal_id
  role_definition_name = "AcrPull"
  scope          = azurerm_container_registry.acr.id
}