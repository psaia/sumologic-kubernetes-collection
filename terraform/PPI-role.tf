resource "sumologic_role" "PPI" {
  name             = "PPI"
  description      = "Publishing system logs"
  filter_predicate = "_source=business-ppi-* OR _sourceCategory=business-ppi OR _sourceCategory=business-ppi-syslog"
  capabilities     = ["manageMonitors", "viewPartitions"]
}

