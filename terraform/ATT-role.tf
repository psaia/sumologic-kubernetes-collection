resource "sumologic_role" "ATT" {
  name             = "ATT"
  description      = "At The Times"
  filter_predicate = "_sourceCategory=att-stg OR\n_sourceCategory=att-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

