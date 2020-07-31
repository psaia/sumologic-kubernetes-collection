resource "sumologic_role" "Paperboy" {
  name             = "Paperboy"
  description      = "Paper Boy Team"
  filter_predicate = "_sourceName=*paperboy-*/syslog.log* or _sourceName=*paperboy-*/kern.log* or _sourceName=*paperboy-*/daemon.log* or _sourceCategory=business-paperboy"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

