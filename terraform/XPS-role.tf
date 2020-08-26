resource "sumologic_role" "XPS" {
  name             = "${var.role_prefix[var.env]}-XPS"
  description      = "InfoDev Team"
  filter_predicate = "_sourceCategory=webandmobile-infodev"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-XPS" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.XPS.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.XPS.name}"
}
