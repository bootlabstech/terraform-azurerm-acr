variable "name" {
  type        = string
  description = "Specifies the name of the Container Registry. Only Alphanumeric characters allowed."
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Container Registry."
}
variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}
variable "sku" {
  type        = string
  description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium."
}
variable "admin_enabled" {
  type        = bool
  description = "Specifies whether the admin user is enabled. Defaults to false."
  default     = true
}
variable "public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is allowed for the container registry. Defaults to true."
  default     = true
}
variable "default_action" {
  type        = string
  description = "The behaviour for requests matching no rules. Either Allow or Deny. Defaults to Allow"
  default     = "Allow"
}
variable "type" {
  type        = string
  description = "Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
  default     = "SystemAssigned"
}
# variable "retention_enabled" {
#   type        = bool
#   description = "Boolean value that indicates whether the policy is enabled."
#   default     = true
# }
# variable "retention_days" {
#   type        = number
#   description = "The number of days to retain an untagged manifest after which it gets purged. Default is 7."
#   default     = 7
# }