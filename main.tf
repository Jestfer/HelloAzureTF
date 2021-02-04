provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "group1-tf"
    storage_account_name = "azuretfsa"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

# Maybe it's a good practice to have a resource group for Terraform and another one for the app???
# Won't do it this time.

# resource "azurerm_resource_group" "rg-hello-azure" {
#   name     = "rg-hello-azure"
#   location = "westeurope"
# }