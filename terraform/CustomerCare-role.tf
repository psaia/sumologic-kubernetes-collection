resource "sumologic_role" "CustomerCare" {
  name             = "CustomerCare"
  description      = "Customer Care Applogs"
  filter_predicate = "_sourceCategory=care-connect-dev OR _sourceCategory=care-connect-stg OR _sourceCategory=care-connect-prd OR _source=care-connect-dev OR _source=care-connect-stg OR _source=care-connect-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

