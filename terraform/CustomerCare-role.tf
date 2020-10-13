resource "sumologic_role" "CustomerCare" {
  name             = "${var.role_prefix[var.env]}-CustomerCare"
  description      = "Customer Care Applogs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.Care_Connect_care-connect-dev.category} OR _sourceCategory=${sumologic_http_source.Care_Connect_care-connect-stg.category} OR _sourceCategory=${sumologic_http_source.Care_Connect_care-connect-prd.category} OR _source=${sumologic_http_source.Care_Connect_care-connect-dev.category} OR _source=${sumologic_http_source.Care_Connect_care-connect-stg.category} OR _source=${sumologic_http_source.Care_Connect_care-connect-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-CustomerCare" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.CustomerCare.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.CustomerCare.name}"
  lifecycle {
    prevent_destroy = true
  }
}
