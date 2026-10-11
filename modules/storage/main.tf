
resource "azurerm_storage_account" "mystorage" {
  name                       = var.name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  account_tier               = "Standard"
  account_replication_type   = "LRS"
  https_traffic_only_enabled = false
  min_tls_version            = "TLS1_0"
  queue_encryption_key_type  = "Account"
  table_encryption_key_type  = "Account"
}

resource "azurerm_storage_container" "mycontainer" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.mystorage.id
  container_access_type = "private"
}
