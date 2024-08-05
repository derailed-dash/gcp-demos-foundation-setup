# Required if using User ADCs (Application Default Credentials) for Org Policy API.
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.37.0" 
    }
  }
}

provider "google" {}

# Required if using User ADCs (Application Default Credentials) for Cloud Identity API.
provider "google-beta" {}
