provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westeurope"

  tags = {
    Environment = "Terraform Getting Started"
    Team        = "DevOps"
  }
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

