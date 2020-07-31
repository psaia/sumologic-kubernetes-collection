resource "sumologic_role" "NYT_Beta" {
  name             = "NYT Beta"
  description      = "NYT Beta Team"
  filter_predicate = "_sourceCategory=webandmobile-brian*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

