
resource "azurerm_storage_account" "terraform_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.terraform_storage.name
  location                 = azurerm_resource_group.terraform_storage.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "terraform_storage" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.terraform_storage.name
  container_access_type = "private"
}

data "azurerm_storage_account" "terraform_storage" {
  name                = azurerm_storage_container.terraform_storage.name
  resource_group_name = azurerm_resource_group.terraform_storage.name
}

data "azurerm_storage_container" "terraform_storage" {
  name                = azurerm_storage_account.terraform_storage.name
  resource_group_name = azurerm_resource_group.terraform_storage.name
}

data "azurerm_storage_account_key" "terraform_storage" {
  storage_account_id = data.azurerm_storage_account.terraform_storage.id
  key_type           = "primary"
}
