resource azurerm_kubernetes_cluster "k8s_cluster" {
  dns_prefix          = "terragoat-${var.environment}"
  location            = var.location
  name                = "terragoat-aks-${var.environment}"
  resource_group_name = azurerm_resource_group.example.name
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name       = "default"
    vm_size    = "Standard_D2_v2"
    node_count = 2
  }
  tags = {
    purpose   = "Poc Demo"
    yor_name  = "k8s_cluster"
    yor_trace = "e899ad3b-d651-4da6-856d-d6b8a4a89529"
  }
}