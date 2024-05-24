# VPC and Subnets
module "cs-vpc-prod-shared" {
  source  = "terraform-google-modules/network/google"
  version = "~> 9.0"

  project_id   = module.cs-vpc-host-prod-vb582-ef543.project_id
  network_name = "vpc-prod-shared"

  subnets = [
    {
      subnet_name           = "subnet-prod-eu-west2"
      subnet_ip             = "10.0.0.0/24"
      subnet_region         = "europe-west2"
      subnet_private_access = true
    },
    {
      subnet_name           = "subnet-prod-eu-west3"
      subnet_ip             = "10.0.1.0/24"
      subnet_region         = "europe-west3"
      subnet_private_access = true
    },
  ]

  firewall_rules = [
    {
      name      = "vpc-prod-shared-allow-icmp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "icmp"
          ports    = []
        }
      ]
      ranges = [
        "10.128.0.0/9",
      ]
    },
    {
      name      = "vpc-prod-shared-allow-ssh"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["22"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
    {
      name      = "vpc-prod-shared-allow-rdp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["3389"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
  ]
}

# VPC and Subnets
module "cs-vpc-nonprod-shared" {
  source  = "terraform-google-modules/network/google"
  version = "~> 9.0"

  project_id   = module.cs-vpc-host-nonprod-vb582-ef543.project_id
  network_name = "vpc-nonprod-shared"

  subnets = [
    {
      subnet_name           = "subnet-nonprod-eu-west2"
      subnet_ip             = "10.1.0.0/24"
      subnet_region         = "europe-west2"
      subnet_private_access = true
    },
    {
      subnet_name           = "subnet-nonprod-eu-west3"
      subnet_ip             = "10.1.1.0/24"
      subnet_region         = "europe-west3"
      subnet_private_access = true
    },
  ]

  firewall_rules = [
    {
      name      = "vpc-nonprod-shared-allow-icmp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "icmp"
          ports    = []
        }
      ]
      ranges = [
        "10.128.0.0/9",
      ]
    },
    {
      name      = "vpc-nonprod-shared-allow-ssh"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["22"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
    {
      name      = "vpc-nonprod-shared-allow-rdp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["3389"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
  ]
}
