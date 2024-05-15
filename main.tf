terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}

provider "azurerm" {
    features {}
  }
  resource "azurerm_resource_group" "kennolakrg" {
  name     = "ken-rg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "kennolakrg" {
  name                = "ken-vnet"
  resource_group_name = azurerm_resource_group.kennolakrg.name
  location            = azurerm_resource_group.kennolakrg.location
  address_space       = ["10.0.0.0/16"]
}
