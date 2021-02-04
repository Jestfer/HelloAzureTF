resource "azurerm_container_registry" "acr" {
  name                = "group1-containerRegistry"
  resource_group_name = "group1-tf"
  location            = "westeurope"
}