resource "sumologic_role" "Storage" {
  name             = "Storage"
  description      = "Storage Team"
  filter_predicate = "_sourceCategory=ftps-dev-syslog or _sourceCategory=ftps-stg-syslog or _sourceCategory=ftps-prd-syslog or _sourceCategory=AWS_EAGLE"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

