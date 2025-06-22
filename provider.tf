terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.24.0" # Adjust this version as needed
    }
  }
}
provider "azurerm" {
  features {}
  # resource_provider_registrations = {
  #   enabled = false
  #   timeout = "2m"
  # }
  # skip_provider_registration = true
}