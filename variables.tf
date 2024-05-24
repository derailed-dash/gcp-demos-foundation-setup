variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "0156FA-B1FF4E-6D9ED8"
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "575085288570"
}

variable "billing_project" {
  description = "The project id to use for billing"
  type        = string
  default     = "cs-host-a07beb7f63e34cec9c623b"
}
