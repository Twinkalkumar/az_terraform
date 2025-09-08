terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.Environment.subscription_id
  tenant_id       = var.Environment.tenant_id
  #client_id = var.client_id
  #client_secret = var.client_secret
}