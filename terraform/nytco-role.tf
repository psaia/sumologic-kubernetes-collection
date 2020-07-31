resource "sumologic_role" "nytco" {
  name             = "nytco"
  description      = "NYTCO application logs"
  filter_predicate = "_sourceCategory=nytco-stg or _sourceCategory=fastly-nytco/stg or _sourceCategory=fastly-nytco/prd or _sourceCategory=nytco-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

