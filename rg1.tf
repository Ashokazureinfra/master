terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm"{
    resource_group_name = "rg123"
    storage_account_name = "testtestdemo123"
    container_name = "terraform"
    key = "rg.tfstate"
  }

}

# Configure Microsoft Azure Provider
provider "azurerm" {
      features {}
}


resource "azurerm_resource_group" "example1234" {
  name     = "exampleRG12"
  location = "East US"
}
output "rg"{
  value = azurerm_resource_group.example1234.id
  description = "output value"

}
