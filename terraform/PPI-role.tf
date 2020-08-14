resource "sumologic_role" "PPI" {
  name             = "PPI"
  description      = "Publishing system logs"
  filter_predicate = "_source=business-ppi-* OR _sourceCategory=${sumologic_http_source.Business-PPI_business-ppi-dev.category} OR _sourceCategory=business-ppi-syslog"
  capabilities     = ["manageMonitors", "viewPartitions"]
}

