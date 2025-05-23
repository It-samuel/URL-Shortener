terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.70"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true  # Temporary workaround
}