module "cs-folders-iam-0-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["nonprod"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-folders-iam-0-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["nonprod"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-folders-iam-0-editor" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["nonprod"],
  ]
  bindings = {
    "roles/editor" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-folders-iam-0-resourcemanagerprojectCreator" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["nonprod"],
  ]
  bindings = {
    "roles/resourcemanager.projectCreator" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-folders-iam-1-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["dev"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-folders-iam-1-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["dev"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-folders-iam-1-editor" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["dev"],
  ]
  bindings = {
    "roles/editor" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-folders-iam-1-resourcemanagerprojectCreator" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.7"

  folders = [
    module.cs-envs.ids["dev"],
  ]
  bindings = {
    "roles/resourcemanager.projectCreator" = [
      "group:gcp-developers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-projects-iam-2-loggingviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-logging-demos-dzb1.project_id,
  ]
  bindings = {
    "roles/logging.viewer" = [
      "group:gcp-logging-viewers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-projects-iam-2-loggingprivateLogViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-logging-demos-dzb1.project_id,
  ]
  bindings = {
    "roles/logging.privateLogViewer" = [
      "group:gcp-logging-viewers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-projects-iam-2-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-logging-demos-dzb1.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:gcp-logging-viewers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-projects-iam-2-pubsubviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-logging-demos-dzb1.project_id,
  ]
  bindings = {
    "roles/pubsub.viewer" = [
      "group:gcp-logging-viewers@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-projects-iam-3-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-logging-demos-dzb1.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:gcp-security-admins@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-projects-iam-3-pubsubviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-logging-demos-dzb1.project_id,
  ]
  bindings = {
    "roles/pubsub.viewer" = [
      "group:gcp-security-admins@gcp-demos.just2good.co.uk",
    ]
  }
}

module "cs-service-projects-iam-4-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-svc-ai-nooding-svc-prd-dzb1.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-ai-nooding-svc-prd.id}",
    ]
  }
}

module "cs-service-projects-iam-5-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-svc-scratch-svc-prd-dzb1.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-scratch-svc-prd.id}",
    ]
  }
}

module "cs-service-projects-iam-6-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-svc-ai-nooding-svc-npd-dzb1.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-ai-nooding-svc-npd.id}",
    ]
  }
}

module "cs-service-projects-iam-7-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.7"

  projects = [
    module.cs-svc-scratch-svc-npd-dzb1.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-scratch-svc-npd.id}",
    ]
  }
}
