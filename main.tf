resource "azurerm_virtual_network_gateway" "example" {
  name                = "my-vnet-gateway"
  resource_group_name = azurerm_resource_group.example.name
  location            = "West US"
  type                = "Vpn"
  vpn_type            = "RouteBased"
  sku                 = "VpnGw1"
  gateway_size        = "Small"
  vpn_gateway_ip_configuration {
    name      = "my-gateway-ip"
    subnet_id = azurerm_subnet.example.id
  }
}
