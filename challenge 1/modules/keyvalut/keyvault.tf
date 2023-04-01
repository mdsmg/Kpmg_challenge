
resource "azurerm_key_vault" "example" {
  name                = "my-key-vault"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
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
  name         = azurerm_key_vault_secret.username.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "web_password" {
  name         = azurerm_key_vault_secret.password.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "app_username" {
  name         = azurerm_key_vault_secret.username.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "app_password" {
  name         = azurerm_key_vault_secret.password.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "db_username" {
  name         = azurerm_key_vault_secret.username.name
  key_vault_id = azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "db_password" {
  name         = azurerm_key_vault_secret.password.name
  key_vault_id = azurerm_key_vault.example.id
}

output "web_username" {
  value = data.azurerm_key_vault_secret.web_username.value
}

output "web_password" {
  value = data.azurerm_key_vault_secret.web_password.value
}

output "app_username" {
  value = data.azurerm_key_vault_secret.app_username.value
}

output "app_password" {
  value = data.azurerm_key_vault_secret.app_password.value
}
output "db_username" {
  value = data.azurerm_key_vault_secret.db_username.value
}

output "db_password" {
  value = data.azurerm_key_vault_secret.db_password.value
}