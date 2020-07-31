resource "sumologic_role" "Twistlock" {
  name             = "Twistlock"
  description      = "Twistlock Application Logs"
  filter_predicate = "_sourceCategory=dev/twistlock/console or _sourceCategory=stg/twistlock/console or _sourceCategory=prd/twistlock/console"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction"]
}

