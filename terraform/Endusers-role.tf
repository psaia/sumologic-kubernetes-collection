resource "sumologic_role" "Endusers" {
  name         = "Endusers"
  description  = "Enduser Support Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

