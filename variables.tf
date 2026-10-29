variable "environment" {
  type = string
  description = "The environment for the Service Bus Queue (e.g., dev, test, prod)."
}

variable "location" {
  type = string
  description = "The Azure region where the Service Bus Queue will be created."
}

variable "namespace_id" {
  type = string
  description = "The ID of the Service Bus Namespace where the Queue will be created."
}

variable "solution_name" {
  type = string
  description = "The name of the solution for which the Service Bus Queue is being created."
}
