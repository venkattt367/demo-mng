
variable "name"{
  default = ""
  }
resource "azurerm_resource_group" "test" {
  name     = "${var.name}"
  location = "West US"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_storage_account" "test" {
  name                     = "demoforusers"
  resource_group_name      = azurerm_resource_group.test.name
  location                 = azurerm_resource_group.test.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
    KEY = "VALUE"
  }
}
