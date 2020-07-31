resource "sumologic_role" "tcen" {
  name             = "tcen"
  description      = "Times Central Logs"
  filter_predicate = "_sourceCategory=tcen-stg OR\n_sourceCategory=tcen-prd "
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

