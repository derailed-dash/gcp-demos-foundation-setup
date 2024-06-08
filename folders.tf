module "cs-common" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 4.0"

  parent = "organizations/${var.org_id}"
  names = [
    "Common",
  ]
}

module "cs-envs" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 4.0"

  parent = "organizations/${var.org_id}"
  names = [
    "prod",
    "nonprod",
    "dev",
  ]
}
