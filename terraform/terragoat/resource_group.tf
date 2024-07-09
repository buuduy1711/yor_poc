resource "azurerm_resource_group" "example" {
  name     = "terragoat-${var.environment}"
  location = var.location
  tags = {
    purpose   = "demo"
    yor_name  = "example"
    yor_trace = "8bc8d689-bd83-4b51-9092-9c8a2cce9fe0"
  }
}