resource "random_string" "rg_name" {
  length = 5
  special = false
  lower = true
  upper = false
  number = false
}

resource "azurerm_resource_group" "resource_group" {
  location = var.resource_group_location
//  name     = "rg-$(randomn_string.rg_name.result)"
    name     = "prueba"

}
