resource "sumologic_role" "Twistlock" {
  name             = "Twistlock"
  description      = "Twistlock Application Logs"
  filter_predicate = "_sourceCategory=dev/twistlock/console OR _sourceCategory=stg/twistlock/console OR _sourceCategory=prd/twistlock/console"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction"]
}

