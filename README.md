# GCP Demos Foundation Setup

Here you will find examples of how to perform certain LZ related tasks.  The content here is intended to be supported through my guides on [Medium](https://medium.com/@derailed.dash).

## gcp-foundation

Here you will find a sample landing zone Terraform configuration, as would be created using the _"ClickOps, Download and Deploy"_ approach that I describe in my article [Landing Zone Deployment](https://medium.com/google-cloud/landing-zone-deployment-google-cloud-adoption-series-bdc0b36106d0).

## seed-prj-setup

A set of scripts that can be used to setup the environment:

- `env-setup.sh` 
  - You should define your own values here. 
  - Run this whenever re-initialising your environment.
  - Sets ADC to use SA.
- `seed-prj-setup.sh`
  - Creates a Seed project, which can be used for running the LZ Terraform.
  - Links to the billing account and enables APIs.
- `sa-setup.sh`
  - Creates a service account for our Seed project.
  - Binds the requires roles.
  - Obtains the SA key.
  - Sets ADC to use the service account.