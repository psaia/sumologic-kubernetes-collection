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
