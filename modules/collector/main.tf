resource "sumologic_collector" "collector" {
  name        = var.name
  description = "${var.name} collector (Managed by Terraform)"
}

# Provision sources [defaulting to dev, stg, prd] for this collector
resource "sumologic_http_source" "sources" {
  for_each = var.sources

  name         = "${var.name}-${each.value}"
  description  = "${var.name}-${each.value} source (Managed by Terraform)"
  category     = var.name
  collector_id = sumologic_collector.collector.id
}

# Role for this specific collector
module "collector_role" {
  source = "../role"

  name          = var.name
  search_filter = join(" OR ", concat([for src in sumologic_http_source.sources : "_source=${src.name}"], ["_sourceCategory=${var.name}"]))
}
