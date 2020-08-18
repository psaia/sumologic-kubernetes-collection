resource "sumologic_role" "Output" {
  name             = "${var.role_prefix[var.env]}-Output"
  description      = "Output systems logs"
  filter_predicate = "_source=output-px*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

