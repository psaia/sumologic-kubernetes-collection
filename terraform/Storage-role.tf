resource "sumologic_role" "Storage" {
  name             = "Storage"
  description      = "Storage Team"
  filter_predicate = "_sourceCategory=ftps-dev-syslog OR _sourceCategory=ftps-stg-syslog OR _sourceCategory=ftps-prd-syslog OR _sourceCategory=AWS_EAGLE"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

