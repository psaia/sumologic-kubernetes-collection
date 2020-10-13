resource "sumologic_role" "SEG" {
  name             = "${var.role_prefix[var.env]}-SEG"
  description      = "SEG Team"
  filter_predicate = "_sourceCategory=webandmobile-seg"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-SEG" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.SEG.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.SEG.name}"
  lifecycle {
    prevent_destroy = true
  }
}
