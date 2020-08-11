resource "sumologic_role" "nytco" {
  name             = "nytco"
  description      = "NYTCO application logs"
  filter_predicate = "_sourceCategory=nytco-stg OR _sourceCategory=fastly-nytco/stg OR _sourceCategory=fastly-nytco/prd OR _sourceCategory=nytco-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

