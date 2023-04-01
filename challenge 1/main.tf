provider "azurerm" {
  features {}
}


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.49.0"
    }
  }
}

module "resourcegroup" {
  source         = "./modules/resourcegroup"
  name           = var.name
  location       = var.location
}

module "storageaccount" {
  source         = "./modules/storageaccount"
  resource_group = module.resourcegroup.resource_group_name
  location       = module.resourcegroup.location_id
}

module "backend" {
    source         = "./modules/backend"
    resource_group_name   = module.resourcegroup.resource_group_name
    storage_account_name  = module.azurerm_storage_account.storage.name
    container_name        = module.azurerm_storage_account.container.name
}

module "networking" {
  source         = "./modules/networking"
  location       = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name
  vnetcidr       = var.vnetcidr
  websubnetcidr  = var.websubnetcidr
  appsubnetcidr  = var.appsubnetcidr
  dbsubnetcidr   = var.dbsubnetcidr
}

module "securitygroup" {
  source         = "./modules/securitygroup"
  location       = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name 
  web_subnet_id  = module.networking.websubnet_id
  app_subnet_id  = module.networking.appsubnet_id
  db_subnet_id   = module.networking.dbsubnet_id
}

module "compute" {
  source         = "./modules/compute"
  location = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name
  web_subnet_id = module.networking.websubnet_id
  app_subnet_id = module.networking.appsubnet_id
  web_host_name = var.web_host_name
  web_username = var.web_username
  web_os_password = var.web_os_password
  app_host_name = var.app_host_name
  app_username = var.app_username
  app_os_password = var.app_os_password
}

module "database" {
  source = "./modules/database"
  location = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name
  database = var.database
  database_version = var.database_version
  database_admin = var.database_admin
  database_password = var.database_password
}
