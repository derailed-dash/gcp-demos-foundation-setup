variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
}

variable "billing_project" {
  description = "The project id to use for billing"
  type        = string
  default     = "cs-host-2b129f618ad749c4ae8a02"
}
