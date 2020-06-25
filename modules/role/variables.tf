variable "name" {
  type = string
}

variable "search_filter" {
  type    = string
  default = ""
}

variable "capabilities" {
  type    = list(string)
  default = []
}

variable "owners" {
  # unimplemented at the moment, needs more exploration
  type    = list(string)
  default = []
}
