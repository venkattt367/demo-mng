# Configure the Microsoft Azure Provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  


subscription_id = "8387394d-454a-4a31-b9cf-b43edde3669e"
  client_id       = "48127848-10ca-4df2-8a13-8a7e6767a92b"
  client_secret   = "50b4bd9d-e075-42e3-8892-150566f301af"
  tenant_id       = "bd0a7a2-418d-48f7-92d4-88f4c4938fd0"
features {} 
}
