module "resource_group" {

  source = "./modules/resource-group"

  name        = "lite_rg-${var.environment}"
  location    = var.location
  environment = var.environment
}

module "storage_account" {
  source = "./modules/storage"

  name                = "stlite${var.environment}001"
  resource_group_name = module.resource_group.name
  location            = var.location
  container_name      = "raw-data"
}