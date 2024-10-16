# outputs.tf

output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.storage_account.storage_account_name
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint for the storage account"
  value       = module.storage_account.storage_account_primary_endpoint
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = module.virtual_network.vnet_name
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = module.virtual_network.subnet_name
}
