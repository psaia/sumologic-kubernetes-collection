resource "sumologic_role" "Auth" {
  name             = "Auth"
  description      = "Auth Team"
  filter_predicate = "_sourceCategory=webandmobile-auth OR _sourceName=*auth-*/syslog.log* OR _sourceName=*auth-*/kern.log* OR _sourceName=*auth-*/daemon.log* OR _sourceCategory=webandmobile-seg OR _sourceCategory=stg/myaccount-fastly OR _sourceCategory=prd/myaccount-fastly OR _sourceCategory=prd/homedelivery-fastly OR _sourceCategory=stg/homedelivery-fastly OR _sourceCategory=prd/ecommerce/auth_event_publisher OR _sourceCategory=stg/ecommerce/auth_event_publisher"
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

