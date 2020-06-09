resource "sumologic_collector" "collector" {
  name        = var.name
  description = "${var.name} collector (Managed by Terraform)"
}

resource "sumologic_http_source" "sources" {
  for_each = var.sources

  name                = "${var.name}-${each.value}"
  description         = "${var.name}-${each.value} source (Managed by Terraform)"
  category            = var.name
  collector_id        = sumologic_collector.collector.id
}