

# Create Resource Group
resource "azurerm_resource_group" "storage_rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create Storage Account
resource "azurerm_storage_account" "terraform_backend" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.storage_rg.name
  location                 = azurerm_resource_group.storage_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "dev"
  }
}

# Create Blob Container
resource "azurerm_storage_container" "terraform_backend_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.terraform_backend.name
  container_access_type = "private"
}

