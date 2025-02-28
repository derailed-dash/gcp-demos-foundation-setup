module "project-factory" {
    source = "git::https://github.com/derailed-dash/cff-fast-lz//modules/project-factory"
    # source = "git::https://github.com/derailed-dash/cff-fast-lz//modules/project-factory?depth=1&ref=derailed-dash/fix-prj-validation"
    # source = "github.com/derailed-dash/cff-fast-lz//modules/project-factory?ref=v13.0.0&depth=1"
    
    # use a default billing account if none is specified via yaml
    data_defaults = {
      billing_account = var.billing_account_id
    }
    
    # make sure the environment label and stackdriver service are always added
    data_merges = {
      labels = {
        environment = "dev"
      }
      services = [
        "stackdriver.googleapis.com"
      ]
    }

    # always use this contact and prefix, regardless of what is in the yaml file
    data_overrides = {
      prefix = "pf"
    }

    # location where the yaml files are read from
    factories_config = {
      budgets = {
        billing_account   = var.billing_account_id
        budgets_data_path = "data/budgets"
        notification_channels = {
          billing-default = {
            project_id = var.billing_project
            type       = "email"
            labels = {
              email_address = var.billing_admins
            }
          }
        }
      }

      hierarchy = {
        folders_data_path = "data/hierarchy" # enable folder hierarchy factory
        parent_ids = {
          default = "folders/${var.default_folder_id}"
        }
      }
      
      projects_data_path = "data/projects"
    }    
}