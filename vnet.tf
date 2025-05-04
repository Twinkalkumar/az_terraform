resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.vnet_ipaddress
  depends_on          = [azurerm_resource_group.rg]
  subnet {
    name = var.subnet_name
    address_prefixes = var.address_prefix
  }
}


