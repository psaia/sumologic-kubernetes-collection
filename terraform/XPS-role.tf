resource "sumologic_role" "XPS" {
  name             = "XPS"
  description      = "InfoDev Team"
  filter_predicate = "_sourceCategory=webandmobile-infodev"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

