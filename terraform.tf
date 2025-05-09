# Configure the Azure provider
# something
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  
  cloud {
    organization = "jeseija"
    workspaces {
      name = "learn-terraform-azure"
    }
  }
  
}