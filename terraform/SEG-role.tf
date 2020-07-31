resource "sumologic_role" "SEG" {
  name             = "SEG"
  description      = "SEG Team"
  filter_predicate = "_sourceCategory=webandmobile-seg"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

