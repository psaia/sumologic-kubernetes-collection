resource "sumologic_role" "Search" {
  name             = "${var.role_prefix[var.env]}-Search"
  description      = "Search Team"
  filter_predicate = "_sourceCategory=webandmobile-search OR _sourceCategory=webandmobile-seo OR _sourceCategory=search-api-* OR _source=search-api-* OR _sourceCategory=nytimes-search-omnibus-* OR _sourceCategory=nytimes-search-add-es-*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Search" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Search.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Search.name}"
  lifecycle {
    prevent_destroy = true
  }
}
