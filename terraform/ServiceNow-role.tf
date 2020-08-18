resource "sumologic_role" "ServiceNow" {
  name             = "${var.role_prefix[var.env]}-ServiceNow"
  description      = "Windows ServiceNow"
  filter_predicate = "_sourceCategory=windows-servicenow"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

