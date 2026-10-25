
# Development Resource group
module "dev_rg" {
  source = "./modules/resource_group"

  rg_name = var.dev_rg_name
  location = var.dev_location

  environment = var.dev_environment
  owner = var.dev_owner
                          
}

# QA Resource group
module "qa_rg" {
  source = "./modules/resource_group"

  rg_name = var.qa_rg_name
  location = var.qa_location
  environment = var.qa_environment
  owner = var.qa_owner
}
# Production Resource group
module "prod_rg" {
  source = "./modules/resource_group"

  rg_name = var.prod_rg_name
  location = var.prod_location
  environment = var.prod_environment
  owner = var.prod_owner
}

data "azurerm_resource_group" "dev_rg" {
  name = module.dev_rg.rg_name
}

resource "azurerm_storage_account" "dev_storage_account" {
  name                     = "demostorage20261023"
  resource_group_name      = data.azurerm_resource_group.dev_rg.name
  location                 = data.azurerm_resource_group.dev_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
