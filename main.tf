provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "rg_sb_eastus_335189_1_177659538673"
  location = "East US"
}