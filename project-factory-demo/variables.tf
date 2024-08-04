variable "billing_account_id" {
  description = "The ID of the billing account to associate projects with"
  type        = string
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
}

variable "default_folder_id" {
  description = "Parent folder to use, if none is specified"
  type        = string
}

variable "billing_admins" {
  description = "Email address for billing admins"
  type        = string
}

variable "billing_project" {
  description = "The project id to use for billing"
  type        = string
}
