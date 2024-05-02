variable "project_id" {
  type        = string
  description = "Project id where service account will be created."
}

variable "names" {
  type        = list(string)
  description = "Names of the service accounts to create."
  default     = []
}

variable "display_name" {
  type        = string
  description = "Display names of the created service accounts (defaults to 'Terraform-managed service account')"
  default     = "Terraform-managed service account"
}

variable "role" {
  type        = string
  description = "Common roles to apply to all service accounts, project=>role as elements."
  default     = ""
}

variable "description" {
  type        = string
  description = "Default description of the created service accounts (defaults to no description)"
  default     = ""
}

variable "title" {
  type        = string
  description = "Default description of the created service accounts (defaults to no description)"
  default     = ""
}

variable "expression" {
  type        = string
  description = "Default description of the created service accounts (defaults to no description)"
  default     = ""
}
