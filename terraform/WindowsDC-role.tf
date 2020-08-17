resource "sumologic_role" "WindowsDC" {
  name             = "WindowsDC"
  description      = "Windows DC"
  filter_predicate = "_sourceCategory=${sumologic_http_source.https-collector_dev_windows-dc.category} OR _sourceCategory=virtualization-esx"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}
