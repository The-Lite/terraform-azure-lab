output "resource_groupe_name" {
  description = " Name of the Azure Group"
  value       = module.resource_group.name
}

output "resource_group_id" {
  description = "Unique ID of the Azure Resource Group"
  value       = module.resource_group.id
}

output "resource_group_location" {
  description = "Location of the Azure Resource Group"
  value       = module.resource_group.location
}