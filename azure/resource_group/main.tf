resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.resource_group.location
}