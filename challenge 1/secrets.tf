data "azurerm_key_vault_secret" "web_username" {
  web_username     = "my-username-secret"
  key_vault_id = azurerm_key_vault.my_key_vault.id
}

data "azurerm_key_vault_secret" "web_os_password " {
  web_os_password = "my-password-secret"
  key_vault_id = azurerm_key_vault.my_key_vault.id
}


data "azurerm_key_vault_secret" "web_username" {
  web_username     = "my-username-secret"
  key_vault_id = azurerm_key_vault.my_key_vault.id
}

data "azurerm_key_vault_secret" "app_username" {
  app_username = "my-password-secret"
  key_vault_id = azurerm_key_vault.my_key_vault.id
}


data "azurerm_key_vault_secret" "database_admin"{
  web_username     = "my-username-secret"
  key_vault_id = azurerm_key_vault.my_key_vault.id
}

data "azurerm_key_vault_secret" "database_password" {
  web_os_password = "my-password-secret"
  key_vault_id = azurerm_key_vault.my_key_vault.id
}
