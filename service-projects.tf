module "cs-svc-huey-prod-svc-uhko" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "ret-bank-huey-prod-svc"
  project_id      = "huey-prod-svc-uhko"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-teams["prod-ret-banking"].ids["huey"]

  shared_vpc = module.cs-vpc-prod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-prod-shared.subnets["europe-west2/subnet-prod-eu-west2"].self_link, ""),
    try(module.cs-vpc-prod-shared.subnets["europe-west3/subnet-prod-eu-west3"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-ret-bank-huey-prod-svc.name
  group_role = "roles/viewer"
}

module "cs-svc-huey-nonprod-svc-uhko" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "ret-bank-huey-nonprod-svc"
  project_id      = "huey-nonprod-svc-uhko"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-teams["nonprod-ret-banking"].ids["huey"]

  shared_vpc = module.cs-vpc-nonprod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-nonprod-shared.subnets["europe-west2/subnet-nonprod-eu-west2"].self_link, ""),
    try(module.cs-vpc-nonprod-shared.subnets["europe-west3/subnet-nonprod-eu-west3"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-ret-bank-huey-nonprod-svc.name
  group_role = "roles/viewer"
}

module "cs-svc-dewey-prod-svc-uhko" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "ret-bank-dewey-prod-svc"
  project_id      = "dewey-prod-svc-uhko"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-teams["prod-ret-banking"].ids["dewey"]

  shared_vpc = module.cs-vpc-host-prod-vb582-ef543.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-ret-bank-dewey-prod-svc.name
  group_role = "roles/viewer"
}

module "cs-svc-dewey-nonprod-svc-uhko" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "ret-bank-dewey-nonprod-svc"
  project_id      = "dewey-nonprod-svc-uhko"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-teams["nonprod-ret-banking"].ids["dewey"]

  shared_vpc = module.cs-vpc-host-nonprod-vb582-ef543.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-ret-bank-dewey-nonprod-svc.name
  group_role = "roles/viewer"
}
