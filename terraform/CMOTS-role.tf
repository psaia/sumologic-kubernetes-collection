resource "sumologic_role" "CMOTS" {
  name             = "CMOTS"
  description      = "CMOTS/Magnolia logs"
  filter_predicate = "_sourceCategory=cmots-dev OR\n_sourceCategory=cmots-stg OR\n_sourceCategory=cmots-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

