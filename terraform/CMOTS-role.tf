resource "sumologic_role" "CMOTS" {
  name             = "${var.role_prefix[var.env]}-CMOTS"
  description      = "CMOTS/Magnolia logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.CMOTS_cmots-dev.category} OR _sourceCategory=${sumologic_http_source.CMOTS_cmots-stg.category} OR _sourceCategory=${sumologic_http_source.CMOTS_cmots-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

