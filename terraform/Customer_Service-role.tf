resource "sumologic_role" "Customer_Service" {
  name             = "${var.role_prefix[var.env]}-Customer Service"
  description      = "Customer Service logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.Care_Services_care-services-dev.category} OR _sourceCategory=care-services-stg OR _sourceCategory=care-services-prd OR _source=${sumologic_http_source.Care_Services_care-services-dev.category} OR _source=care-services-stg OR _source=care-services-prd"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys"]
}

resource "ad_group_to_ou" "ad-group-Customer_Service" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Customer_Service.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Customer_Service.name}"
  lifecycle {
    prevent_destroy = true
  }
}
