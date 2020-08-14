resource "sumologic_role" "Auth" {
  name             = "Auth"
  description      = "Auth Team"
  filter_predicate = "_sourceCategory=webandmobile-auth OR _sourceName=*auth-*/syslog.log* OR _sourceName=*auth-*/kern.log* OR _sourceName=*auth-*/daemon.log* OR _sourceCategory=webandmobile-seg OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_homedelivery-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_homedelivery-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_Lire.category} OR _sourceCategory=${sumologic_http_source.HTTP_Lire_Staging.category}"
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

