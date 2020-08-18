resource "sumologic_role" "UGC" {
  name             = "${var.role_prefix[var.env]}-UGC"
  description      = "UGC Team"
  filter_predicate = "_sourceCategory=webandmobile-ugc"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

