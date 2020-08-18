resource "sumologic_role" "Messaging" {
  name             = "${var.role_prefix[var.env]}-Messaging"
  description      = "Messaging Team"
  filter_predicate = "_sourceCategory=webandmobile-messaging"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

