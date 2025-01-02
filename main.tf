provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg1"
  location = "East US"
}