resource "sumologic_role" "Messaging" {
  name             = "${var.role_prefix[var.env]}-Messaging"
  description      = "Messaging Team"
  filter_predicate = "_sourceCategory=webandmobile-messaging"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Messaging" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Messaging.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Messaging.name}"
  lifecycle {
    prevent_destroy = true
  }
}
