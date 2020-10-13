resource "sumologic_role" "tcen" {
  name             = "${var.role_prefix[var.env]}-tcen"
  description      = "Times Central Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.TCEN__Time_Central__tcen-stg.category} OR _sourceCategory=${sumologic_http_source.TCEN__Time_Central__tcen-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-tcen" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.tcen.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.tcen.name}"
  lifecycle {
    prevent_destroy = true
  }
}
