resource "sumologic_role" "ServiceNow" {
  name             = "${var.role_prefix[var.env]}-ServiceNow"
  description      = "Windows ServiceNow"
  filter_predicate = "_sourceCategory=windows-servicenow"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-ServiceNow" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.ServiceNow.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.ServiceNow.name}"
  lifecycle {
    prevent_destroy = true
  }
}
