resource "sumologic_role" "Customer_Service" {
  name             = "Customer Service"
  description      = "Customer Service logs"
  filter_predicate = "_sourceCategory=care-services-dev or _sourceCategory=care-services-stg or _sourceCategory=care-services-prd or\n_source=care-services-dev or\n_source=care-services-stg or\n_source=care-services-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction"]
}

