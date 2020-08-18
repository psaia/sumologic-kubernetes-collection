resource "sumologic_role" "DBAs" {
  name         = "${var.role_prefix[var.env]}-DBAs"
  description  = "Database Administartors"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

