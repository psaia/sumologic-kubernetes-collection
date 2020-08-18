resource "sumologic_role" "MobileWeb" {
  name             = "${var.role_prefix[var.env]}-MobileWeb"
  description      = "MobileWeb Team"
  filter_predicate = "_sourceCategory=webandmobile-mobileweb OR _view=blocker_by_rmid OR _view=blocker_aggregate OR _view=blocker_aggregate_general"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

