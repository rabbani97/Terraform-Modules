# modules/virtual_network/variables.tf

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "location" {
  description = "The Azure region where the virtual network will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
}

variable "tags" {
  description = "Tags to be assigned to the virtual network and subnet"
  type        = map(string)
  default     = {}
}
