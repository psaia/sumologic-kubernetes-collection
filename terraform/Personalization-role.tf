resource "sumologic_role" "Personalization" {
  name             = "${var.role_prefix[var.env]}-Personalization"
  description      = "Personalization Team"
  filter_predicate = "(_sourceCategory=linux-* AND _sourceName=*/per-*/*.log) OR _sourceCategory=webandmobile-personalization OR _index=linux*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Personalization" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Personalization.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Personalization.name}"
  lifecycle {
    prevent_destroy = true
  }
}
