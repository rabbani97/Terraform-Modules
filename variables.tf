# variables.tf

variable "subscription_id" {
  description = "The subscription ID for Azure"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
#   default     = "dummyrg"
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "West US"
}

# Storage Account variables
variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
#   default     = "dummystgacnt"
}

variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}

# Virtual Network variables
variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
#   default     = "dummy-vnet001"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
#   default     = "dummymy-subnet001"
}

variable "subnet_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {
    environment = "development"
    project     = "dummyproject"
  }
}
