provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "demo_rg" {
  count    = var.rg_create ? 1 : 0
  name     = var.rg_name
  location = var.location
}


resource "azurerm_virtual_network" "example" {
  depends_on = [
    azurerm_resource_group.demo_rg[0]
  ]
  name                = "example-network"
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = var.address_prefixes[0]
  }

  subnet {
    name           = "subnet2"
    address_prefix = var.address_prefixes[1]
  }
  tags = var.tags
}
