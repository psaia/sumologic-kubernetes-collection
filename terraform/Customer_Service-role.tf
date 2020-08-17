resource "sumologic_role" "Customer_Service" {
  name             = "Customer Service"
  description      = "Customer Service logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.Care_Services_care-services-dev.category} OR _sourceCategory=care-services-stg OR _sourceCategory=care-services-prd OR _source=${sumologic_http_source.Care_Services_care-services-dev.category} OR _source=care-services-stg OR _source=care-services-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction"]
}
