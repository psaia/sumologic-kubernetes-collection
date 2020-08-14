locals {
  name = replace(var.name, "/", "-")
}

resource "sumologic_collector" "collector" {
  name        = local.name
  description = "${var.name} collector (Managed by Terraform)"
  timezone    = var.timezone
}

# Provision sources [defaulting to dev, stg, prd] for this collector
resource "sumologic_http_source" "sources" {
  for_each = var.sources

  name         = "${local.name}-${each.value}"
  description  = "${local.name}-${each.value} source (Managed by Terraform)"
  category     = "${local.name}-${each.value}"
  collector_id = sumologic_collector.collector.id
  timezone     = var.timezone
}

# Role for this specific collector
module "collector_role" {
  source = "../role"

  name          = var.name
  env           = var.env
  search_filter = join(" OR ", [for src in sumologic_http_source.sources : "_source=${src.name} OR _sourceCategory=${src.category}"])
}
