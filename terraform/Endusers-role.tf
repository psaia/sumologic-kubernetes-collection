resource "sumologic_role" "Endusers" {
  name         = "${var.role_prefix[var.env]}-Endusers"
  description  = "Enduser Support Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

