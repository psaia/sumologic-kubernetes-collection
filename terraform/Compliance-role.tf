resource "sumologic_role" "Compliance" {
  name         = "${var.role_prefix[var.env]}-Compliance"
  description  = "Compliance Team"
  capabilities = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-Compliance" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Compliance.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Compliance.name}"
  lifecycle {
    prevent_destroy = true
  }
}
