resource "sumologic_role" "Auth" {
  name             = "${var.role_prefix[var.env]}-Auth"
  description      = "Auth Team"
  filter_predicate = "_sourceCategory=webandmobile-auth OR _sourceName=*auth-*/syslog.log* OR _sourceName=*auth-*/kern.log* OR _sourceName=*auth-*/daemon.log* OR _sourceCategory=webandmobile-seg OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_homedelivery-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_homedelivery-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_Lire.category} OR _sourceCategory=${sumologic_http_source.HTTP_Lire_Staging.category} OR _sourceCategory=nyt-kraken-prd"
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Auth" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Auth.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Auth.name}"
  group_manager         = "CN=Chu\\, Jethro,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nytint,DC=com"
  lifecycle {
    prevent_destroy = true
  }
}