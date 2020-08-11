resource "sumologic_role" "tcen" {
  name             = "tcen"
  description      = "Times Central Logs"
  filter_predicate = "_sourceCategory=tcen-stg OR _sourceCategory=tcen-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

