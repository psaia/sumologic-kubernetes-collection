resource "sumologic_role" "Video" {
  name             = "Video"
  description      = "Video Team"
  filter_predicate = "_sourceName=*video-*/syslog.log* or _sourceName=*video-*/kern.log* or _sourceName=*video-*/daemon.log* or _sourceCategory=webandmobile-video OR _sourceCategory=video-service-stg OR _sourceCategory=video-service"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

