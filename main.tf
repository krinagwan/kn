terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
 backend "azurerm" {
    resource_group_name   = "dev-cus-poc-rg-0001"
    storage_account_name  = "actionuntname"
    container_name        = "ctactionuntname"
    key                   = "actiondev.terraform.tfstate"
  }

}

provider "azurerm" {
  features {

  }
  subscription_id = "ddb23ce9-0db9-442f-9bbd-5a86d4102828"
}

data "azurerm_resource_group" "action" {
  name     = "dev-cus-poc-rg-0001"
}

resource "azurerm_storage_account" "example" {
  name                     = "actionuntname"
  resource_group_name      = data.azurerm_resource_group.action.name
  location                 = "CentralUS"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "example2" {
  name                     = "actionuntname2"
  resource_group_name      = data.azurerm_resource_group.action.name
  location                 = "CentralUS"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}



