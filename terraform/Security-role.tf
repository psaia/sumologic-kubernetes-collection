resource "sumologic_role" "Security" {
  name             = "${var.role_prefix[var.env]}-Security"
  description      = "SecOps Team"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel", "viewCollectors"]
  filter_predicate = "_sourceCategory=*"
}

resource "ad_group_to_ou" "ad-group-Security" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Security.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Security.name}"
  lifecycle {
    prevent_destroy = true
  }
}
