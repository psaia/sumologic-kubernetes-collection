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
