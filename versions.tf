terraform {
  required_version = ">= 1.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.22"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.22"
    }
  }
  provider_meta "google" {
    module_name = "blueprints/terraform/fs-exported-cd8d5c3d151d87aa/v0.1.0"
  }
  provider_meta "google-beta" {
    module_name = "blueprints/terraform/fs-exported-cd8d5c3d151d87aa/v0.1.0"
  }
}
