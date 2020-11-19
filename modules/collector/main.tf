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
  fields       = var.collector_fields
}

# Write the endpoints to Vault
resource "vault_generic_secret" "dv_namespace" {
  path         = "nytimes/dv-sumologic/versioned/endpoints/${var.env}/${local.name}"
  disable_read = true
  data_json    = format("{%s}", join(",", [for src in var.sources : format("\"%s\": \"%s\"", src, sumologic_http_source.sources[src].url)]))
  #
}

# Write the endpoints to Vault
resource "vault_generic_secret" "repo_namespace" {
  # Only write endpoints if enabled for prod only
  for_each = var.write_to_vault && var.env == "prd" ? var.sources : []

  path         = "${var.name}/versioned/${each.value}/sumo_key"
  disable_read = true
  data_json    = <<EOT
{
  "source_category": "${sumologic_http_source.sources[each.value].category}",
  "url": "${sumologic_http_source.sources[each.value].url}",
  "example_query": "_sourceCategory=${sumologic_http_source.sources[each.value].category}"
}
EOT
}

# Role for this specific collector
module "collector_role" {
  source = "../role"

  name          = local.name
  env           = var.env
  search_filter = join(" OR ", [for src in sumologic_http_source.sources : "_source=${src.name} OR _sourceCategory=${src.category}"])
}
