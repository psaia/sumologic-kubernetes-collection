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

variable "enable_ad" {
  type    = bool
  default = true
}
