resource "sumologic_role" "Security" {
  name         = "Security"
  description  = "SecOps Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

