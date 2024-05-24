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

module "cs-divisions" {
  for_each = module.cs-envs.ids
  source   = "terraform-google-modules/folders/google"
  version  = "~> 4.0"

  parent = each.value
  names = [
    "ret-banking",
    "wealth-mgmt",
    "mortgages",
  ]
}

module "cs-teams" {
  for_each = merge([for grandParentFolderName, parentFolder in module.cs-divisions : { for parentFolderName, id in parentFolder.ids : "${grandParentFolderName}-${parentFolderName}" => id }]...)
  source   = "terraform-google-modules/folders/google"
  version  = "~> 4.0"

  parent = each.value
  names = [
    "huey",
    "dewey",
    "louie",
  ]
}
