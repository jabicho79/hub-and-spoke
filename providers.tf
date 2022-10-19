terraform {
  required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
    
  backend "azurerm" {
     resource_group_name  = "cloud-shell-storage-westeurope"
     storage_account_name = "csb100320019d1845a7"
     container_name       = "terraform"
     key                  = "terraform.tfstate"
  }
  
}

provider "azurerm" {
    version         =   "~> 2.0"
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    subscription_id =   var.subscription_id
    tenant_id       =   var.tenant_id
  
    features {}
}

provider "azuread" {
    version         =   ">= 0.11"
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    tenant_id       =   var.tenant_id
    alias           =   "ad"
}
