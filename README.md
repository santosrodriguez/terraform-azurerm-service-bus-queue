# Azure Service Bus Queue Terraform Module

## Introduction
Deploy an Azure Service Bus Queue within an existing Service Bus Namespace using Terraform.

## Usage

```hcl
module "service_bus_queue" {
  source = "caresource.pe.jfrog.io/shared-tfmodules-internal__integration/service-bus-queue/azurerm"
  version = "0.1.0"
  environment = var.environment
  location = var.location
  namespace_id = module.service_bus_namespace.service_bus_id
  solution_name = var.solution_name
}
```

## Inputs
| Name                                | Type           | Description                                        | Default    |
|--------------------------------------|----------------|----------------------------------------------------|------------|
| environment                          | string         | The environment for the Service Bus Queue (e.g., dev, test, prod). | n/a |
| location                             | string         | The Azure region where the Service Bus Queue will be created. | n/a |
| namespace_id                         | string         | The ID of the Service Bus Namespace where the Queue will be created. | n/a |
| solution_name                        | string         | The name of the solution for which the Service Bus Queue is being created. | n/a |

## Outputs
| Name                                  | Description                              |
|-----------------------------------------|-------------------------------------------|
| service_bus_queue_id                 | The ID of the Service Bus Queue.         |
| service_bus_queue_name               | The name of the Service Bus Queue.       |

## Features

- Service Bus Queue creation within an existing namespace
- Naming convention enforced via azurecaf

## Requirements

- Terraform >= 1.4.0
- AzureRM >= 3.0
