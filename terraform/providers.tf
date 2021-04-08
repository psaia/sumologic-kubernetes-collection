provider "ad" {
  domain = var.ad_domain
  url    = var.ad_url
  user   = var.ad_user
  # password = this is set through AD_PASSWORD

  version = "0.3.0"
}

provider "sumologic" {
  # access_id   =  this is set through SUMOLOGIC_ACCESSID
  # access_key  =  this is set through SUMOLOGIC_ACCESSKEY
  # environment =  this is set through SUMOLOGIC_ENVIRONMENT

  version = "~> 2.9.1"
}

provider "vault" {
  # address = this is set through VAULT_ADDR
  # token   = this is sourced from ~/.vault-token

  version = "~> 2.19"
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
