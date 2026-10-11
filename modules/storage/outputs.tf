output "storage_account_id" {
  value = azurerm_storage_account.mystorage.id
}

output "container_name" {
  value = azurerm_storage_container.mycontainer.name
}