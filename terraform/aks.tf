resource azurerm_kubernetes_cluster "k8s_cluster" {
  dns_prefix          = "terragoat-${var.environment}"
  location            = var.location
  name                = "demonstrate-aks-${var.environment}"
  resource_group_name = azurerm_resource_group.example.name
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name       = "default"
    vm_size    = "Standard_D2_v2"
    node_count = 2
  }
  role_based_access_control {
    enabled = false
  }
  tags = {
    Environment = var.environment
    yor_name    = "k8s_cluster"
    yor_trace   = "5c1ee962-b2d0-4a73-b0e1-f0285ac350d7"
  }
}