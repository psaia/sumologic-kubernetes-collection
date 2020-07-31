resource "sumologic_role" "Output" {
  name             = "Output"
  description      = "Output systems logs"
  filter_predicate = "_source=output-px*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

