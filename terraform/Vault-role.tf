resource "sumologic_role" "Vault" {
  name             = "${var.role_prefix[var.env]}-Vault"
  description      = "Vault HTTP Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_vault-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_vault-prd.category}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Vault" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Vault.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Vault.name}"
}