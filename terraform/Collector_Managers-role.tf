resource "sumologic_role" "Collector_Managers" {
  name         = "${var.role_prefix[var.env]}-Collector Managers"
  description  = "Users Who Can Modify Collectors And Sources"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "manageCollectors", "viewCollectors"]
}

