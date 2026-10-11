resource "azurerm_resource_group" "lite_rg" {
  name     = var.name
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
  lifecycle {
    ignore_changes = [tags]
  }
}