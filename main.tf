terraform {

required_providers {

azurerm = {
  source = "hashicorp/azurerm"
  version = "~>3.6"
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