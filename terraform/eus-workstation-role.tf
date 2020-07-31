resource "sumologic_role" "eus-workstation" {
  name             = "eus-workstation"
  description      = "End-User workstation"
  filter_predicate = "_sourceCategory=SNARE-Workstation or _sourceCategory=workstation-test or _sourceCategory=Workstation-Logs or _sourcecategory=linux-* \"casper-adm\" or _sourcecategory=linux-* \"casper-web\" or _sourceCategory=linux-* casper or _sourceCategory=google_apps_gsuite_alerts or _sourceCategory=google_apps_gsuite_audit or _sourceCategory=\"Bomgar Access Logs\""
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

