module "cs-vpc-host-prd-dzb1" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "vpc-host-prd"
  project_id = "vpc-host-prd-dzb1"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account                = var.billing_account
  enable_shared_vpc_host_project = true
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-vpc-host-npd-dzb1" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "vpc-host-nonprod"
  project_id = "vpc-host-npd-dzb1"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account                = var.billing_account
  enable_shared_vpc_host_project = true
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-logging-demos-dzb1" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "logging"
  project_id = "logging-demos-dzb1"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-monitoring-prd-demos-dzb1" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "monitoring-prd"
  project_id = "monitoring-prd-demos-dzb1"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-monitoring-npd-demos-dzb1" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "monitoring-npd"
  project_id = "monitoring-npd-demos-dzb1"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-monitoring-dev-demos-dzb1" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "monitoring-dev"
  project_id = "monitoring-dev-demos-dzb1"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}
