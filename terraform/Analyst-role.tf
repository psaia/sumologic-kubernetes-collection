resource "sumologic_role" "Analyst" {
  name         = "Analyst"
  description  = "Infrastructure & Operations Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

