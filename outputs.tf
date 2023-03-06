output "resource_group_name" {
  value = azurerm_resource_group.default.name
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}

output "acr_registry_hostname" {
  value = azurerm_container_registry.default.login_server
}

output "acr_registry_username" {
  value = azurerm_container_registry.default.admin_username
  sensitive = true
}

output "acr_registry_password" {
  value = azurerm_container_registry.default.admin_password
  sensitive = true
}

output "az_cluster_creds_command" {
  description = "The `az` cli command to get the admin credentials for the AKS cluster"
  value = "az aks get-credentials --resource-group ${azurerm_resource_group.default.name} --name ${azurerm_kubernetes_cluster.default.name} --admin"
}

output "azure_container_registry_login" {
  value = "az acr login -n ${azurerm_container_registry.default.name}"
}