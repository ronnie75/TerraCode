terraform {
  backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate14359"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you're using version 1.x, the "features" block is not allowed.
    # test de modification
    version = "~>2.0"
    features {}
    }
    
resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}