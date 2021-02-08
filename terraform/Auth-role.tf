resource "sumologic_role" "Auth" {
  name             = "${var.role_prefix[var.env]}-Auth"
  description      = "Auth Team"
  filter_predicate = "_sourceCategory=webandmobile-auth OR _sourceName=*auth-*/syslog.log* OR _sourceName=*auth-*/kern.log* OR _sourceName=*auth-*/daemon.log* OR _sourceCategory=webandmobile-seg OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_homedelivery-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_homedelivery-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_Lire.category} OR _sourceCategory=${sumologic_http_source.HTTP_Lire_Staging.category} OR _sourceCategory=nyt-kraken-prd OR _collector=k8s.gcp.nyt-kraken-dev.us-east.auth-seshd-local-1 OR _collector=k8s.gcp.nyt-kraken-dev.us-east.auth-seshd-local-2 OR _collector=k8s.gcp.nyt-auth-dev.us-east.dev0 OR _collector=k8s.gcp.nyt-auth-dev.us-east.stg0 OR _sourceCategory=fastly-myaccount/prd OR _sourceCategory=fastly-myaccount/stg OR _sourceCategory=fastly-myaccount/dev"
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel", "manageCollectors", "viewCollectors"]
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
