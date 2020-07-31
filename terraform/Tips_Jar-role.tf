resource "sumologic_role" "Tips_Jar" {
  name             = "Tips Jar"
  description      = "Tips collection logs"
  filter_predicate = "_sourceCategory=tipjar-x-stg OR _sourceCategory=tipjar-x-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

