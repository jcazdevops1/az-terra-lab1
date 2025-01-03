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
  name     = "rg2"
  location = "West India"
}

resource "azurerm_storage_account" "storage" {
  name                     = "sa1jcazdevops1"  # Storage account name must be unique globally
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    CreatedBy = "Jay"
    DateCreated = "4-Dec-25"
    Purpose = "Testing"
  }
}