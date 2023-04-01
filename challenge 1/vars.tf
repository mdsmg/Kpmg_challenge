variable "name" {
type = string
description = "RG name in Azure"
}
variable "location" {
type        = string
description = "RG location in Azure"
}
variable "vnetcidr" {
type        = string
description = "Vnet cidr in Azure"
}
variable "websubnetcidr" {
 type        = string
 description = "web vm subnet cidr in Azure"
}
variable "appsubnetcidr" {
 type        = string
 description = "app VM subnet cidr in Azure"
}
variable "dbsubnetcidr" {
 type        = string
 description = "DB subnet in Azure"
}
variable "web_host_name"{
 type        = string
  description = "web server VM in Azure"
}
variable "web_username" {
 type        = string
 description = "web server VM username in Azure"
}
variable "web_os_password" {
 type        = string
 description = "web server VM password in Azure"
}
variable "app_host_name"{
 type        = string
 description = "app server VM in Azure"
}
variable "app_username" {
 type        = string
 description = "web server VM username in Azure"
}
variable "app_os_password" {
 type        = string
 description = "web server VM passwordin Azure"
}
variable "database" {
 type        = string
 description = "database name in Azure"
}
variable "database_admin" {

type        = string
   description = "database admin name in Azure"
}
variable "database_password" {
type        = string
   description = "database password in Azure"
}
variable "database_version" {
type        = string
    description = "Database version"
}




