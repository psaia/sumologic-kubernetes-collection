resource "sumologic_role" "CMOTS" {
  name             = "${var.role_prefix[var.env]}-CMOTS"
  description      = "CMOTS/Magnolia logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.CMOTS_cmots-dev.category} OR _sourceCategory=${sumologic_http_source.CMOTS_cmots-stg.category} OR _sourceCategory=${sumologic_http_source.CMOTS_cmots-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-CMOTS" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.CMOTS.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.CMOTS.name}"
  lifecycle {
    prevent_destroy = true
  }
}
