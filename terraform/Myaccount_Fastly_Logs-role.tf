resource "sumologic_role" "Myaccount_Fastly_Logs" {
  name             = "Myaccount Fastly Logs"
  description      = "Access to fastly logs for myaccount service"
  filter_predicate = "_sourceCategory=prd/myaccount-fastly OR _sourceCategory=stg/myaccount-fastly"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "viewCollectors"]
}

