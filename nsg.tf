# Local Public IP
data "http" "myip" {
  url = "https://api.ipify.org"
}

# Network security Group
resource "azurerm_network_security_group" "nsg-twinkal" {
  name                = "nsg-twinkal"
  location            = var.rg_location
  resource_group_name = var.rg_name
  depends_on          = [azurerm_resource_group.rg]
}

# Inbound Rule for HTTP,HTTPS,SSH
resource "azurerm_network_security_rule" "Inbound_rule" {
  name                        = "Allow-HTTP-HTTPS-SSH"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_ranges     = ["80", "443", "22"]
  source_address_prefix       = chomp(data.http.myip.response_body)
  destination_address_prefix  = "*"
  resource_group_name         = var.rg_name
  network_security_group_name = azurerm_network_security_group.nsg-twinkal.name
}

# Outbound Rule
resource "azurerm_network_security_rule" "outbound_all" {
  name                        = "Allow-All-Outbound"
  priority                    = 120
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.rg_name
  network_security_group_name = azurerm_network_security_group.nsg-twinkal.name
}

# Associate NSG to Subnet
resource "azurerm_subnet_network_security_group_association" "nsg_assoc" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg-twinkal.id
}