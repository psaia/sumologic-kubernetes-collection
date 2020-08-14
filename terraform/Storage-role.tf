resource "sumologic_role" "Storage" {
  name             = "Storage"
  description      = "Storage Team"
  filter_predicate = "_sourceCategory=${sumologic_http_source.FTPS_ftps-dev-syslog.name} OR _sourceCategory=${sumologic_http_source.FTPS_ftps-stg-syslog.category} OR _sourceCategory=${sumologic_http_source.FTPS_ftps-prd-syslog.category} OR _sourceCategory=AWS_EAGLE"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

