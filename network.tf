resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-capstone"
  location            = azurerm_resource_group.rg.location
  resource_group_name = rg_sb_eastus_335189_1_177659538673
  address_space       = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "web" {
  name                 = "subnet-web"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}