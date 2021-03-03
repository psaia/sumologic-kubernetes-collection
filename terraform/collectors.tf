module "dv-test" {
  source = "../modules/collector"

  name = "dv-test"
  env  = var.env
}

module "nytimes-dv-sumologic" {
  source = "../modules/collector"

  name           = "nytimes/dv-sumologic"
  env            = var.env
  write_to_vault = true
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

module "nytimes-spg-printsite-management-service" {
  source = "../modules/collector"

  name = "nytimes/spg-printsite-management-service"
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

  #
  name     = "nytm/pubsys-newsgate-ConfigBase1"
  env      = var.env
  timezone = "America/New_York"
}

module "nytimes-spg-invoice-service" {
  source = "../modules/collector"

  name = "nytimes/spg-invoice-service"
  env  = var.env
}

module "nytimes-spg-subinfo" {
  source = "../modules/collector"

  name = "nytimes/spg-subinfo"
  env  = var.env
}

module "nytimes-spg-paypal-integration" {
  source = "../modules/collector"

  name = "nytimes/spg-paypal-integration"
  env  = var.env
}

module "nytimes-spg-settlements" {
  source = "../modules/collector"

  name = "nytimes/spg-settlements"
  env  = var.env
}

module "nytimes-spg-itunes-subscription-service" {
  source = "../modules/collector"

  name = "nytimes/spg-itunes-subscription-service"
  env  = var.env
}

module "nytimes-spg-inyt-subscription-api" {
  source = "../modules/collector"

  name = "nytimes/spg-inyt-subscription-api"
  env  = var.env
}

module "nytimes-spg-inyt-datacompliance-api" {
  source = "../modules/collector"

  name = "nytimes/spg-inyt-datacompliance-api"
  env  = var.env
}

# These service don't have an associated GitHub repo
module "nytimes-infra-ftp-services" {
  source = "../modules/collector"

  name    = "nytimes/infra-ftp-services"
  env     = var.env
  sources = ["prd"]
}

# elections collector
module "nytimes-dv-elections-terraform" {
  source = "../modules/collector"

  name = "nytimes/dv-elections-terraform"
  env  = var.env
}

# Drone CI logs
module "nytm-dv-drone" {
  source = "../modules/collector"

  name           = "nytm/dv-drone"
  env            = var.env
  write_to_vault = true
}

module "nytm-ecomm-aristo" {
  source = "../modules/collector"

  name     = "nytm-ecomm-aristo"
  env      = var.env
  timezone = "America/New_York"
  collector_fields = {
    "_convertHeadersToFields" = "true"
  }
}

# Vault AWS collection
module "nytimes-dv-vault-aws" {
  source = "../modules/collector"

  name = "nytimes/dv-vault-aws"
  env  = var.env
}

module "nytimes-dv-docker-registry" {
  source = "../modules/collector"

  name           = "nytimes/dv-docker-registry"
  env            = var.env
  write_to_vault = true
}

module "nytimes-nirmata-poc" {
  source = "../modules/collector"

  name = "nytimes/nirmata-poc"
  env  = var.env
}

# Egress proxies for pci environments
# No associated repo
module "nytimes-dv-pci-proxy" {
  source = "../modules/collector"

  name    = "nytimes/dv-pci-proxy"
  env     = var.env
  sources = ["prd"]
}

module "nytimes-github" {
  source = "../modules/collector"

  name = "nytimes/github"
  env  = var.env
  collector_fields = {
    "_convertHeadersToFields" = "true"
  }
}

module "nytimes-spg-order-service" {
  source = "../modules/collector"

  name = "nytimes/spg-order-service"
  env  = var.env
  collector_fields = {
    "_convertHeadersToFields" = "true"
  }
}
# spg apigee Collectors to pipe logs to sumo
module "nytimes-spg-apigee-config" {
  source = "../modules/collector"

  name           = "nytimes/spg-apigee-config"
  env            = var.env
  write_to_vault = true
  collector_fields = {
    "_convertHeadersToFields" = "true"
  }
}
# Care EKS Cluster Collectors
# No associated repo
module "nytimes-care-eks-cluster" {
  source = "../modules/collector"

  name = "nytimes/care-eks-cluster"
  env  = var.env
}

# fastly-bestsellers Collectors
module "nytimes-auth-seshd" {
  source = "../modules/collector"

  name = "nytimes-auth-seshd"
  env  = var.env
}

# infosec webhooks
module "nytimes-infosec-webhooks" {
  source = "../modules/collector"

  name = "nytimes-infosec-webhooks"
  env  = var.env
}

# infosec gcp-ip report
module "nytimes-infosec-gcp-ip-report" {
  source = "../modules/collector"

  name    = "nytimes-infosec-gcp-ip-report"
  env     = var.env
  sources = ["prd"]
}

# Drone CI logs from AWSMA EKS cluster
module "nytimes-dv-awsma-drone" {
  source = "../modules/collector"

  name = "nytimes/dv-awsma-drone"
  env  = var.env
}

# Corelight logs - no associated repo
module "nytimes-infosec-corelight" {
  source = "../modules/collector"

  name = "nytimes-infosec-corelight"
  env  = var.env
}

# Umbrella logs - no associated repo
module "nytimes-infosec-umbrella" {
  source = "../modules/collector"

  name = "nytimes-infosec-umbrella"
  env  = var.env
}

# Multimedia EKS Cluster Collector
module "nytimes-multimedia-awsma-eks" {
  source = "../modules/collector"

  name = "nytimes-multimedia-awsma-eks"
  env  = var.env
}
