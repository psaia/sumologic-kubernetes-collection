resource "sumologic_role" "BI" {
  name             = "${var.role_prefix[var.env]}-BI"
  description      = "BI Team"
  filter_predicate = "_sourceCategory=business-bi"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-BI" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.BI.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.BI.name}"
}
