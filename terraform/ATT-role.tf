resource "sumologic_role" "ATT" {
  name             = "ATT"
  description      = "At The Times"
  filter_predicate = "_sourceCategory=${sumologic_http_source.ATT__At_The_Times__att-stg.category} OR _sourceCategory=${sumologic_http_source.ATT__At_The_Times__att-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

