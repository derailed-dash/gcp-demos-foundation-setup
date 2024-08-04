module "project-factory" {
    # source = "github.com/derailed-dash/cff-fast-lz//modules/project-factory?ref=v13.0.0&depth=1"
    source = "github.com/derailed-dash/cff-fast-lz//modules/project-factory"
    
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
      hierarchy = {
        folders_data_path = "data/hierarchy"
      }
      projects_data_path = "data/projects"
    }    
}