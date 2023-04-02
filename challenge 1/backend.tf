resource_group_name   = var.name
storage_account_name  = data.azurerm_storage_account.terraform_storage.name
container_name        = data.azurerm_storage_container.terraform_storage.name
key  = "terraform.tfstate"