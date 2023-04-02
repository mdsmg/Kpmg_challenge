# Define variables
variable "storage_account_name" {
  description = "Name of the Azure Storage Account to create"
  type        = string
}

variable "container_name" {
  description = "Name of the Blob Container to create"
  type        = string
  default = "tfstate"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group to create the Storage Account in"
  type        = string
default = "terraform-rg"
}
