resource "sumologic_role" "Output" {
  name             = "${var.role_prefix[var.env]}-Output"
  description      = "Output systems logs"
  filter_predicate = "_source=output-px*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Output" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Output.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Output.name}"
  lifecycle {
    prevent_destroy = true
  }
}
