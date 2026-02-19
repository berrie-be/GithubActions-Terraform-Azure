terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "practice-github-actions-terraform"
    storage_account_name = "githubactionsterraformm"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
    use_azuread_auth      = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

