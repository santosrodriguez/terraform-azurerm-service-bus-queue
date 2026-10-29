terraform {
  required_providers {
    azurecaf = {
      source  = "aztfmod/azurecaf"
    }
    random = {
      source  = "hashicorp/random"
    }
  }
}

resource "random_string" "suffix" {
  length = 4
  upper = false
  special = false
  numeric = true
  lower = false
}

data "azurecaf_name" "solution_name" {
  resource_type = "azurerm_servicebus_queue"
  suffixes = [ var.solution_name, var.location, var.environment, random_string.suffix.result ]
}

resource "azurerm_servicebus_queue" "queue" {
  name = data.azurecaf_name.solution_name.result 
  namespace_id = var.namespace_id
}
