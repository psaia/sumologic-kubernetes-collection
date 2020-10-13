resource "sumologic_role" "Video" {
  name             = "${var.role_prefix[var.env]}-Video"
  description      = "Video Team"
  filter_predicate = "_sourceName=*video-*/syslog.log* OR _sourceName=*video-*/kern.log* OR _sourceName=*video-*/daemon.log* OR _sourceCategory=webandmobile-video OR _sourceCategory=${sumologic_http_source.HTTP_video-service-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_video-service.category}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Video" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Video.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Video.name}"
  lifecycle {
    prevent_destroy = true
  }
}
