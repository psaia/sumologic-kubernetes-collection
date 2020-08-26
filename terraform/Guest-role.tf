resource "sumologic_role" "Guest" {
  name             = "${var.role_prefix[var.env]}-Guest"
  description      = "Default Guest User"
  filter_predicate = "_sourceCategory=guest"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Guest" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Guest.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Guest.name}"
}
