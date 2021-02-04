resource "azurerm_container_registry" "acr" {
  name                = "group1containerRegistry"
  resource_group_name = "group1-tf"
  location            = "westeurope"
  sku                 = "Standard"
}