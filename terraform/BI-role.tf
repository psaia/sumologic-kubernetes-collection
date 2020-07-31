resource "sumologic_role" "BI" {
  name             = "BI"
  description      = "BI Team"
  filter_predicate = "_sourceCategory=business-bi"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

