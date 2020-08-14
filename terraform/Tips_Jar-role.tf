resource "sumologic_role" "Tips_Jar" {
  name             = "Tips Jar"
  description      = "Tips collection logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.tipjar_tipjar-x-stg.category} OR _sourceCategory=${sumologic_http_source.tipjar_tipjar-x-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

