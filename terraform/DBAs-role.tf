resource "sumologic_role" "DBAs" {
  name         = "DBAs"
  description  = "Database Administartors"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

