resource "sumologic_role" "tcen" {
  name             = "${var.role_prefix[var.env]}-tcen"
  description      = "Times Central Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.TCEN__Time_Central__tcen-stg.category} OR _sourceCategory=${sumologic_http_source.TCEN__Time_Central__tcen-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

