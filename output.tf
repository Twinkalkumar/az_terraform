output "Resource_Group" {
  value = azurerm_resource_group.rg
}

output "Virtual_Network" {
  value = azurerm_virtual_network.vnet
}
output "Subnet" {
  value = azurerm_virtual_network.vnet.subnet
}

output "ssh_privatekey" {
  value = "${path.module}/id_rsa ssh key generated"
}

output "ssh_publickey" {
  value = "${path.module}/id.rsa.pub ssh public key generated"
}

output "publicip" {
  value = "Public IP: ${azurerm_public_ip.public_ip.ip_address}"
}