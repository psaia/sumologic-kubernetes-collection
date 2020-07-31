resource "sumologic_role" "Collector_Managers" {
  name         = "Collector Managers"
  description  = "Users Who Can Modify Collectors And Sources"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "manageCollectors", "viewCollectors"]
}

