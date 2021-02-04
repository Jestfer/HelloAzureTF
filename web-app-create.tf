resource "azurerm_app_service_plan" "main" {
  name                = "group1-asp"
  location            = "westeurope"
  resource_group_name = "group1-tf"
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "main" {
  name                = "group1-appservice"
  location            = azurerm_app_service_plan.main.location
  resource_group_name = "group1-tf"
  app_service_plan_id = azurerm_app_service_plan.main.id

  site_config {
    linux_fx_version = "NODE|10.14"
  }
}
