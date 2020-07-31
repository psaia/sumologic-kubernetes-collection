resource "sumologic_role" "Vault" {
  name             = "Vault"
  description      = "Vault HTTP Logs"
  filter_predicate = "_sourceCategory=stg/vault or _sourceCategory=prd/vault"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

