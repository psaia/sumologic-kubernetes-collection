resource "sumologic_role" "Guest" {
  name             = "${var.role_prefix[var.env]}-Guest"
  description      = "Default Guest User"
  filter_predicate = "_sourceCategory=guest"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

