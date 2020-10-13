resource "sumologic_role" "advertising" {
  name             = "${var.role_prefix[var.env]}-advertising"
  description      = "Fastly WAF Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_fastly-advertising_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising-waf_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising-waf_prd.category}"
  capabilities     = ["manageMonitors", "viewPartitions", "createAccessKeys"]
}

resource "ad_group_to_ou" "ad-group-advertising" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.advertising.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.advertising.name}"
  lifecycle {
    prevent_destroy = true
  }
}

