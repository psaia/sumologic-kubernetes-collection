provider "ad" {
  domain = var.ad_domain
  url    = var.ad_url
  user   = var.ad_user
  # password = this is set through AD_PASSWORD
}

provider "sumologic" {
  # access_id   =  this is set through SUMOLOGIC_ACCESSID
  # access_key  =  this is set through SUMOLOGIC_ACCESSKEY
  # environment =  this is set through SUMOLOGIC_ENVIRONMENT
}

variable "ad_domain" {
  type = string
}

variable "ad_url" {
  type = string
}

variable "ad_user" {
  type = string
}
