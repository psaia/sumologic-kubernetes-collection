resource "sumologic_role" "eus-workstation" {
  name             = "eus-workstation"
  description      = "End-User workstation"
  filter_predicate = "_sourceCategory=SNARE-Workstation OR _sourceCategory=workstation-test OR _sourceCategory=Workstation-Logs OR _sourcecategory=linux-* \"casper-adm\" OR _sourcecategory=linux-* \"casper-web\" OR _sourceCategory=linux-* casper OR _sourceCategory=google_apps_gsuite_alerts OR _sourceCategory=google_apps_gsuite_audit OR _sourceCategory=\"Bomgar Access Logs\""
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

