# main.tf
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


# Call the storage account module
# main.tf
module "storage_account" {
  source                   = "./modules/storage_account"
  name                     = var.storage_account_name
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  tags                      = var.tags
}

# Call the virtual network and subnet module
module "virtual_network" {
  source              = "./modules/virtual_network"
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_name         = var.subnet_name
  subnet_prefixes     = var.subnet_prefixes
  tags                = var.tags
}


