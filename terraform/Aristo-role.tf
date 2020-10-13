resource "sumologic_role" "Aristo" {
  name             = "${var.role_prefix[var.env]}-Aristo"
  description      = "Aristo Team"
  filter_predicate = "_sourceCategory=business-aristo* OR _sourceCategory=business-ax-etl OR _sourceCategory=aristo-prd OR _sourceCategory=axpetl-prd OR _sourceCategory=ppd"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Aristo" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Aristo.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Aristo.name}"
  lifecycle {
    prevent_destroy = true
  }
}

