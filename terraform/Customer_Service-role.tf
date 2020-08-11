resource "sumologic_role" "Customer_Service" {
  name             = "Customer Service"
  description      = "Customer Service logs"
  filter_predicate = "_sourceCategory=care-services-dev OR _sourceCategory=care-services-stg OR _sourceCategory=care-services-prd OR _source=care-services-dev OR _source=care-services-stg OR _source=care-services-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction"]
}

