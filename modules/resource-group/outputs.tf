output "name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.lite_rg.name
}

output "id" {
  description = "Unique Azure resource ID"
  value       = azurerm_resource_group.lite_rg.id
}

output "location" {
  description = "Azure region of the resource group"
  value       = azurerm_resource_group.lite_rg.location
}