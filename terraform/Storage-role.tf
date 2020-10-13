resource "sumologic_role" "Storage" {
  name             = "${var.role_prefix[var.env]}-Storage"
  description      = "Storage Team"
  filter_predicate = "_sourceCategory=${sumologic_http_source.FTPS_ftps-dev-syslog.name} OR _sourceCategory=${sumologic_http_source.FTPS_ftps-stg-syslog.category} OR _sourceCategory=${sumologic_http_source.FTPS_ftps-prd-syslog.category} OR _sourceCategory=AWS_EAGLE OR ${module.nytimes-infra-ftp-services.search_filter}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Storage" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Storage.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Storage.name}"
  lifecycle {
    prevent_destroy = true
  }
}
