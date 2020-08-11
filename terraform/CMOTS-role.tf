resource "sumologic_role" "CMOTS" {
  name             = "CMOTS"
  description      = "CMOTS/Magnolia logs"
  filter_predicate = "_sourceCategory=cmots-dev OR _sourceCategory=cmots-stg OR _sourceCategory=cmots-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

