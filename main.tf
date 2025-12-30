terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }


}

provider "azurerm" {
  features {

  }
  subscription_id = "ddb23ce9-0db9-442f-9bbd-5a86d4102828"
}

resource "azurerm_resource_group" "action" {
  name     = "action"
  location = "West Europe"
}
