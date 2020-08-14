resource "sumologic_role" "CustomerCare" {
  name             = "CustomerCare"
  description      = "Customer Care Applogs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.Care_Connect_care-connect-dev.category} OR _sourceCategory=${sumologic_http_source.Care_Connect_care-connect-stg.category} OR _sourceCategory=${sumologic_http_source.Care_Connect_care-connect-prd.category} OR _source=${sumologic_http_source.Care_Connect_care-connect-dev.category} OR _source=${sumologic_http_source.Care_Connect_care-connect-stg.category} OR _source=${sumologic_http_source.Care_Connect_care-connect-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

