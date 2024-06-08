module "cs-svc-ai-nooding-svc-prd-dzb1" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "ai-nooding-svc-prd"
  project_id      = "ai-nooding-svc-prd-dzb1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["prod"]

  shared_vpc = module.cs-vpc-prd-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-prd-shared.subnets["europe-west2/subnet-prd-eu-west2"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-ai-nooding-svc-prd.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-svc-scratch-svc-prd-dzb1" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "scratch-svc-prd"
  project_id      = "scratch-svc-prd-dzb1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["prod"]

  shared_vpc = module.cs-vpc-host-prd-dzb1.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-scratch-svc-prd.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-svc-ai-nooding-svc-npd-dzb1" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "ai-nooding-svc-npd"
  project_id      = "ai-nooding-svc-npd-dzb1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["nonprod"]

  shared_vpc = module.cs-vpc-npd-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-npd-shared.subnets["europe-west2/subnet-npd-eu-west2"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-ai-nooding-svc-npd.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-svc-scratch-svc-npd-dzb1" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.5"

  name            = "scratch-svc-npd"
  project_id      = "scratch-svc-npd-dzb1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["nonprod"]

  shared_vpc = module.cs-vpc-host-npd-dzb1.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-scratch-svc-npd.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}
