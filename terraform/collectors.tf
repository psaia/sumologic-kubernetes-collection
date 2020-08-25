module "dv-test" {
  source = "../modules/collector"

  name = "dv-test"
  env  = var.env
}

module "nytimes-dv-sumologic" {
  source = "../modules/collector"

  name      = "nytimes/dv-sumologic"
  env       = var.env
  enable_ad = false
}

module "nytimes-spg-petstore" {
  source = "../modules/collector"

  name = "nytimes/spg-petstore"
  env  = var.env
}

module "nytimes-search-add-es" {
  source = "../modules/collector"

  name = "nytimes/search-add-es"
  env  = var.env
}

module "nytimes-search-omnibus-log2es" {
  source = "../modules/collector"

  name = "nytimes/search-omnibus/log2es"
  env  = var.env
}

module "nytimes-spg-productservice" {
  source = "../modules/collector"

  name = "nytimes/spg-productservice"
  env  = var.env
}

module "nytm-pubsys-output-scripts" {
  source = "../modules/collector"

  name     = "nytm/pubsys-output-scripts"
  env      = var.env
  timezone = "America/New_York"
}

module "nytm-pubsys-newsgate-ConfigBase1" {
  source = "../modules/collector"

  name     = "nytm/pubsys-newsgate-ConfigBase1"
  env      = var.env
  timezone = "America/New_York"
}

module "nytimes-spg-invoice-service" {
  source = "../modules/collector"

  name = "nytimes-spg-invoice-service"
  env  = var.env
}

# These service don't have an associated GitHub repo
module "nytimes-infra-ftp-services" {
  source = "../modules/collector"

  name    = "nytimes-infra-ftp-services"
  env     = var.env
  sources = ["prd"]
}
