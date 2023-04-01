output "storage_account_id" {
  value = azurerm_storage_account.terraform_storage.id
}

output "storage_account_name" {
  value = azurerm_storage_account.terraform_storage.name
}

output "storage_container_name" {
  value = azurerm_storage_container.terraform_storage.name
}

output "storage_account_access_key" {
  value = data.azurerm_storage_account_key.terraform_storage.value
}
