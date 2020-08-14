resource "sumologic_role" "advertising" {
  name             = "advertising"
  description      = "Fastly WAF Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_fastly-advertising_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising-waf_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-advertising-waf_prd.category}"
  capabilities     = ["manageMonitors", "viewPartitions"]
}

