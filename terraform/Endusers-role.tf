resource "sumologic_role" "Endusers" {
  name         = "${var.role_prefix[var.env]}-Endusers"
  description  = "Enduser Support Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-Endusers" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Endusers.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Endusers.name}"
  lifecycle {
    prevent_destroy = true
  }
}
