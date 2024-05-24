module "cs-vpc-host-prod-vb582-ef543" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "vpc-host-prod"
  project_id = "vpc-host-prod-vb582-ef543"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account                = var.billing_account
  enable_shared_vpc_host_project = true
}

module "cs-vpc-host-nonprod-vb582-ef543" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "vpc-host-nonprod"
  project_id = "vpc-host-nonprod-vb582-ef543"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account                = var.billing_account
  enable_shared_vpc_host_project = true
}

module "cs-logging-vb582-ef543" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "logging"
  project_id = "logging-vb582-ef543"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}

module "cs-monitoring-prod-vb582-ef543" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "monitoring-prod"
  project_id = "monitoring-prod-vb582-ef543"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}

module "cs-monitoring-nonprod-vb582-ef543" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "monitoring-nonprod"
  project_id = "monitoring-nonprod-vb582-ef543"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}

module "cs-monitoring-dev-vb582-ef543" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.5"

  name       = "monitoring-dev"
  project_id = "monitoring-dev-vb582-ef543"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}
