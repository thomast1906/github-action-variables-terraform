terraform {
  backend "azurerm" {
    resource_group_name  = "thomasthorntoncloud"
    storage_account_name = "thomasthorntontfstate"
    container_name       = "terraformgithubexample2"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}
