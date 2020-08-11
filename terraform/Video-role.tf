resource "sumologic_role" "Video" {
  name             = "Video"
  description      = "Video Team"
  filter_predicate = "_sourceName=*video-*/syslog.log* OR _sourceName=*video-*/kern.log* OR _sourceName=*video-*/daemon.log* OR _sourceCategory=webandmobile-video OR _sourceCategory=video-service-stg OR _sourceCategory=video-service"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

