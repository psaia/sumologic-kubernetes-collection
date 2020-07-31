resource "sumologic_role" "MobileWeb" {
  name             = "MobileWeb"
  description      = "MobileWeb Team"
  filter_predicate = "_sourceCategory=webandmobile-mobileweb or _view=blocker_by_rmid or _view=blocker_aggregate or _view=blocker_aggregate_general"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

