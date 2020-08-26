resource "sumologic_role" "DBAs" {
  name         = "${var.role_prefix[var.env]}-DBAs"
  description  = "Database Administartors"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-DBAs" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.DBAs.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.DBAs.name}"
}
