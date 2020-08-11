resource "sumologic_role" "Blogs" {
  name             = "Blogs"
  description      = "Blogs Team"
  filter_predicate = "_sourceCategory=webandmobile-blogs5 OR _sourceName=*blogs5-*/syslog.log* OR _sourceName=*blogs5-*/kern.log* OR _sourceName=*blogs5-*/daemon.log*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

