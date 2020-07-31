resource "sumologic_role" "CustomerCare" {
  name             = "CustomerCare"
  description      = "Customer Care Applogs"
  filter_predicate = "_sourceCategory=care-connect-dev or _sourceCategory=care-connect-stg or _sourceCategory=care-connect-prd or\n_source=care-connect-dev or\n_source=care-connect-stg or\n_source=care-connect-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

