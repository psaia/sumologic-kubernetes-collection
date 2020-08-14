resource "sumologic_role" "Myaccount_Fastly_Logs" {
  name             = "Myaccount Fastly Logs"
  description      = "Access to fastly logs for myaccount service"
  filter_predicate = "_sourceCategory=${sumologic_http_source.HTTP_myaccount-prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_myaccount-stg.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "viewCollectors"]
}

