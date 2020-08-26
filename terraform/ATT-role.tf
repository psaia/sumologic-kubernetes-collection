resource "sumologic_role" "ATT" {
  name             = "${var.role_prefix[var.env]}-ATT"
  description      = "At The Times"
  filter_predicate = "_sourceCategory=${sumologic_http_source.ATT__At_The_Times__att-stg.category} OR _sourceCategory=${sumologic_http_source.ATT__At_The_Times__att-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-ATT" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.ATT.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.ATT.name}"
}
