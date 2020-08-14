resource "sumologic_role" "eus-workstation" {
  name             = "eus-workstation"
  description      = "End-User workstation"
  filter_predicate = "_sourceCategory=SNARE-Workstation OR _sourceCategory=workstation-test OR _sourceCategory=Workstation-Logs OR _sourceCategory=linux-* \"casper-adm\" OR _sourceCategory=linux-* \"casper-web\" OR _sourceCategory=linux-* casper OR _sourceCategory=${sumologic_http_source.google_apps_gsuite_alerts_Google_Apps_Gsuite_Alerts.category} OR _sourceCategory=${sumologic_http_source.google_apps_gsuite_audit_G_Suite_Apps_Audit_Admin.category} OR _sourceCategory=\"Bomgar Access Logs\""
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

