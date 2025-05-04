output "rg_id" {
  value = azurerm_resource_group.rg.id
}

output "vnet" {
  value = azurerm_virtual_network.vnet
}

output "subnet" {
  value = azurerm_virtual_network.vnet.subnet
}