resource "sumologic_role" "XPS" {
  name             = "${var.role_prefix[var.env]}-XPS"
  description      = "InfoDev Team"
  filter_predicate = "_sourceCategory=webandmobile-infodev"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

