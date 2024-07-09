resource "azurerm_resource_group" "example" {
  name     = local.rg.name
  location = local.azurerm_config.location
  tags = merge(local.azurerm_config.tags, {
    yor_name  = "example"
    yor_trace = "ed93d67e-db11-4286-b399-729d08da3b8d"
  })
}