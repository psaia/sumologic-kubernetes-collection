resource "sumologic_role" "UGC" {
  name             = "${var.role_prefix[var.env]}-UGC"
  description      = "UGC Team"
  filter_predicate = "_sourceCategory=webandmobile-ugc"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-UGC" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.UGC.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.UGC.name}"
  lifecycle {
    prevent_destroy = true
  }
}
