terraform {
  # backend "azurerm" {
  #   key = "terraform.tfstate"
  #   container_name = "tfstate"
  #   storage_account_name = "scbackendtfstate"
  #   sas_token = "sv=2024-11-04&ss=b&srt=c&sp=rwdlaciytfx&se=2025-09-09T01:35:28Z&st=2025-09-08T17:20:28Z&spr=https&sig=%2BkbWpkGyNVye9KGSMINILWfG3La0Q1Kv1lTHMZlivSg%3D"
  # }
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