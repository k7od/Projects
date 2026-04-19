resource "azurerm_key_vault" "kv" {
  name                = "kv-security1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = rg_sb_eastus_335189_1_177659538673
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
}