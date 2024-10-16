# backend.tf
terraform {
  backend "azurerm" {
    resource_group_name   = "my-resource-group"
    storage_account_name  = "stgacnttf24889"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}