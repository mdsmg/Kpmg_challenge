
resource "azurerm_key_vault" "example" {
  name                = "my-key-vault"
  location            = data.azurerm_storage_group.azure-rg.name
  resource_group_name = data.azurerm_storage_container.azure-rg.name
  enabled_for_deployment = true
  enabled_for_disk_encryption = true
  tenant_id           = data.azurerm_client_config.current.tenant_id
}

resource "azurerm_key_vault_secret" "web_username" {
  name         = "my-username-secret"
  value        = "my-username-value"
  key_vault_id = azurerm_key_vault.example.id
}

resource "azurerm_key_vault_secret" "web_password" {
  name         = "my-password-secret"
  value        = "my-password-value"
  key_vault_id = azurerm_key_vault.example.id
}


resource "azurerm_key_vault_secret" "app_username" {
  name         = "my-username-secret"
  value        = "my-username-value"
  key_vault_id = azurerm_key_vault.example.id
}

resource "azurerm_key_vault_secret" "app_password" {
  name         = "my-password-secret"
  value        = "my-password-value"
  key_vault_id = azurerm_key_vault.example.id
}


resource "azurerm_key_vault_secret" "db_username" {
  name         = "my-username-secret"
  value        = "my-username-value"
  key_vault_id = azurerm_key_vault.example.id
}

resource "azurerm_key_vault_secret" "db_password" {
  name         = "my-password-secret"
  value        = "my-password-value"
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "web_username" {
  name         = azurerm_key_vault_secret.web_username.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "web_password" {
  name         = azurerm_key_vault_secret.web_password.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "app_username" {
  name         = azurerm_key_vault_secret.app_username.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "app_password" {
  name         = azurerm_key_vault_secret.app_password.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "db_username" {
  name         = azurerm_key_vault_secret.db_username.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "db_password" {
  name         = azurerm_key_vault_secret.db_password.name
  key_vault_id = azurerm_key_vault.example.id
}

