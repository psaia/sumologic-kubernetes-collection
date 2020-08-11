resource "sumologic_role" "advertising" {
  name             = "advertising"
  description      = "Fastly WAF Logs"
  filter_predicate = "_sourceCategory=fastly-advertising/prd OR _sourceCategory=fastly-advertising/stg OR _sourceCategory=fastly-advertising-waf/stg OR _sourceCategory=fastly-advertising-waf/prd"
  capabilities     = ["manageMonitors", "viewPartitions"]
}

