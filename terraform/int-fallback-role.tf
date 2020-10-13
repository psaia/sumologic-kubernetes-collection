/*resource "sumologic_role" "int-fallback" {
    name = "${var.role_prefix[var.env]}-int-fallback"
    filter_predicate = "(_source=${sumologic_http_source.int-fallback-dev_logs.name} AND _collector=${sumologic_collector.int-fallback-dev.name}) OR (_source=logs AND _collector=int-fallback-stg) OR (_source="logs" and _collector="int-fallback-stg-vpc") OR (_source="logs" and _collector="int-fallback-prd-vpc")"
    capabilities = ["viewFields", "viewFieldExtraction", "createAccessKeys", "viewPartitions", "viewScheduledViews"]
}*/

/*resource "ad_group_to_ou" "ad-group-int-fallback" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.int-fallback.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.int-fallback.name}"
}*/

resource "ad_group_to_ou" "ad-group-int-fallback" {
  ou_distinguished_name = var.ad_oudn
  group_name            = "${var.role_prefix[var.env]}-int-fallback"
  description           = "AD Group for Sumo Logic RBAC group ${var.role_prefix[var.env]}-int-fallback"
  lifecycle {
    prevent_destroy = true
  }
}

