output "service_bus_queue_id" {
  value = azurerm_servicebus_queue.queue.id
}

output "service_bus_queue_name" {
  value = azurerm_servicebus_queue.queue.name
}
