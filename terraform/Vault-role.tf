resource "sumologic_role" "Vault" {
  name             = "Vault"
  description      = "Vault HTTP Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_vault-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_vault-prd.category}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

