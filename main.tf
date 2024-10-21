resource "azurerm_container_registry" "acr" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.sku
  admin_enabled                 = var.admin_enabled
  public_network_access_enabled = var.public_network_access_enabled
  network_rule_set {
    default_action = var.default_action
  }
  identity {
    type = var.type
  }
  # retention_policy {
  #   enabled = var.retention_enabled
  #   days    = var.retention_days
  # }
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
