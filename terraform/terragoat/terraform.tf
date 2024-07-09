terraform {
  required_version = ">=1.3.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "duytfstate"
    container_name       = "tfstate"
    key                  = "terraform.tstate"
  }
}