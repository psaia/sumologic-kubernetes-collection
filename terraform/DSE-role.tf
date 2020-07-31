resource "sumologic_role" "DSE" {
  name             = "DSE"
  description      = "DSE Team"
  filter_predicate = "_sourceName=*/dse-*/syslog.log* or _sourceName=*/dse-*/kern.log* or _sourceName=*/dse-*/daemon.log* or _sourceName=*/bi-*/syslog.log* or _sourceName=*/bi-*/kern.log* or _sourceName=*/bi-*/daemon.log* or _sourceCategory=analytics-dse or _sourceCategory=business-* or _sourceCategory=atg-et-mon or _sourceCategory=analytics-apis"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

