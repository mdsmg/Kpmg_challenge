terraform {
  backend "azurerm" {
    resource_group_name   =  "./modules/resourcegroup"
    storage_account_name  = "terraformrg"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}
