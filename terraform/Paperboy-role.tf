resource "sumologic_role" "Paperboy" {
  name             = "${var.role_prefix[var.env]}-Paperboy"
  description      = "Paper Boy Team"
  filter_predicate = "_sourceName=*paperboy-*/syslog.log* OR _sourceName=*paperboy-*/kern.log* OR _sourceName=*paperboy-*/daemon.log* OR _sourceCategory=business-paperboy"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

