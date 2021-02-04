resource "azurerm_container_registry" "acr" {
  name                     = "containerRegistry1"
  resource_group_name      = "group1-tf"
  location                 = "westeurope"
}
