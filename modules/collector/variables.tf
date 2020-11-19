variable "name" {
  type = string
}

variable "sources" {
  type = set(string)
  default = [
    "dev",
    "stg",
    "prd"
  ]
}

variable "timezone" {
  type    = string
  default = "Etc/UTC"
}

variable "env" {
  type        = string
  description = "Environment that the build is running against"
}

variable "collector_fields" {
  type        = map
  default     = {}
  description = "Optional fields for the http collector"
}

variable "write_to_vault" {
  type        = bool
  description = "Whether or not to write the endpoints to the matching namespace of the repo in Vault"

  default = false
}
