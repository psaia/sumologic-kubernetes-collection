resource "sumologic_role" "WindowsDC" {
  name             = "WindowsDC"
  description      = "Windows DC"
  filter_predicate = "_sourceCategory=windows-dc OR _sourceCategory=virtualization-esx"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

