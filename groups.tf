# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986

module "cs-gg-ret-bank-huey-prod-svc" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "ret-bank-huey-prod-svc@gcp-demos.just2good.co.uk"
  display_name = "ret-bank-huey-prod-svc"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-ret-bank-huey-nonprod-svc" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "ret-bank-huey-nonprod-svc@gcp-demos.just2good.co.uk"
  display_name = "ret-bank-huey-nonprod-svc"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-ret-bank-dewey-prod-svc" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "ret-bank-dewey-prod-svc@gcp-demos.just2good.co.uk"
  display_name = "ret-bank-dewey-prod-svc"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-ret-bank-dewey-nonprod-svc" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "ret-bank-dewey-nonprod-svc@gcp-demos.just2good.co.uk"
  display_name = "ret-bank-dewey-nonprod-svc"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}
