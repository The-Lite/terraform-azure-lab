variable "name" {
  type        = string
  description = "Name of the Azure Ressorce Group"
}

variable "location" {
  type        = string
  description = "Azure region where the resource group is created"
}

variable "environment" {
  type        = string
  description = "Environment: dev, staging, or prod"
}