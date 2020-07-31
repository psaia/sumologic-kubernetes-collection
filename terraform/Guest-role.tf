resource "sumologic_role" "Guest" {
  name             = "Guest"
  description      = "Default Guest User"
  filter_predicate = "_sourceCategory=guest"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

