resource "sumologic_role" "photo" {
  name             = "photo"
  description      = "Photo team"
  filter_predicate = "_sourceCategory=merlin-proxy OR _sourceCategory=merlin-proxy-elb OR _collector=mrlnmiode01"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

