resource "azurerm_resource_group" "azure-rg" {
  name     = var.name
  location = var.location
}

data "azurerm_resource_group" "azure-rg" {
  name                = azurerm_resource_group.azure-rg.name

}

data "azurerm_storage_container" "azure-rg" {
  name                = azurerm_storage_container.azure-rg.name
  
}

data "azurerm_storage_location" "azure-rg" {
  name                = azurerm_storage_location.azure-rg.name
  
}