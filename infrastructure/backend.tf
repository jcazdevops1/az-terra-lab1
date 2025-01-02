terraform {

  backend "azurerm" {
    resource_group_name  = "terraformstate"
    storage_account_name = "terraformstate1377531081"
    container_name       = "lab"
    key                  = "lab.tfstate"
  }

}