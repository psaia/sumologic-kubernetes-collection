resource "sumologic_role" "Myaccount_Fastly_Logs" {
  name             = "${var.role_prefix[var.env]}-Myaccount Fastly Logs"
  description      = "Access to fastly logs for myaccount service"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_myaccount-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-myaccount_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-myaccount_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-myaccount_dev.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "viewCollectors", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Myaccount_Fastly_Logs" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Myaccount_Fastly_Logs.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Myaccount_Fastly_Logs.name}"
  lifecycle {
    prevent_destroy = true
  }
}
