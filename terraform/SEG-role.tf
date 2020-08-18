resource "sumologic_role" "SEG" {
  name             = "${var.role_prefix[var.env]}-SEG"
  description      = "SEG Team"
  filter_predicate = "_sourceCategory=webandmobile-seg"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

