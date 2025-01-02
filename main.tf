terraform {

required_providers {

azurerm = {
  source = "hashicorp/azurerm"
  version = "4.0.1"
}
}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg1"
  location = "East US"
}