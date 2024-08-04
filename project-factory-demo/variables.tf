variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "0156FA-B1FF4E-6D9ED8" # gcp-demos
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "575085288570" # gcp-demos
}