module "serverless" {
   source = "ardeshir/serverless/azure"
}
      
resource "azurerm_storage_blob" "storage_blob" {
   name  = "serverless.zip"
   resource_group_name    = azurerm_resource_group.default.name
   storage_account_name   = azurerm_storage_account.storage_account.name
   storage_container_name = azurerm_storage_container.storage_container.name
   type                   = "block"
   source                 = module.serverless.output_path
}
