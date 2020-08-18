resource "sumologic_role" "BI" {
  name             = "${var.role_prefix[var.env]}-BI"
  description      = "BI Team"
  filter_predicate = "_sourceCategory=business-bi"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

