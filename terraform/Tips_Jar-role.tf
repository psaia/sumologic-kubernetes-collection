resource "sumologic_role" "Tips_Jar" {
  name             = "${var.role_prefix[var.env]}-Tips Jar"
  description      = "Tips collection logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.tipjar_tipjar-x-stg.category} OR _sourceCategory=${sumologic_http_source.tipjar_tipjar-x-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Tips_Jar" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Tips_Jar.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Tips_Jar.name}"
}
