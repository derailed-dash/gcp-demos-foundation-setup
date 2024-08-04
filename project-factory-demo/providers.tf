# Required if using User ADCs (Application Default Credentials) for Org Policy API.
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.17"   # Use latest matching minor version for 4.17
    }
  }
}

provider "google" {
  user_project_override = true
}

# Required if using User ADCs (Application Default Credentials) for Cloud Identity API.
provider "google-beta" {
  user_project_override = true
}
