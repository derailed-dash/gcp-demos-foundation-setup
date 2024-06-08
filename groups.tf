# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986

module "cs-gg-ai-nooding-svc-prd" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "ai-nooding-svc-prd@gcp-demos.just2good.co.uk"
  display_name = "ai-nooding-svc-prd"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-scratch-svc-prd" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "scratch-svc-prd@gcp-demos.just2good.co.uk"
  display_name = "scratch-svc-prd"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-ai-nooding-svc-npd" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "ai-nooding-svc-npd@gcp-demos.just2good.co.uk"
  display_name = "ai-nooding-svc-npd"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-scratch-svc-npd" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "scratch-svc-npd@gcp-demos.just2good.co.uk"
  display_name = "scratch-svc-npd"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}
