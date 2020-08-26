resource "sumologic_role" "NYT_Beta" {
  name             = "${var.role_prefix[var.env]}-NYT Beta"
  description      = "NYT Beta Team"
  filter_predicate = "_sourceCategory=webandmobile-brian*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-NYT_Beta" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.NYT_Beta.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.NYT_Beta.name}"
}
