resource "sumologic_role" "Twistlock" {
  name             = "${var.role_prefix[var.env]}-Twistlock"
  description      = "Twistlock Application Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.Twistlock_twistlock-console-dev.category} OR _sourceCategory=${sumologic_http_source.Twistlock_twistlock-console-stg.category} OR _sourceCategory=${sumologic_http_source.Twistlock_twistlock-console-prd.category}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction"]
}

