resource "sumologic_role" "CMS" {
  name             = "${var.role_prefix[var.env]}-CMS"
  description      = "CMS Team"
  filter_predicate = "_sourceCategory=publishing* OR _sourceCategory=mrln-elb OR _sourceCategory=infrastructure-mysql-slow OR _sourceCategory=merlin-proxy OR _sourceCategory=merlin-proxy-elb OR _sourceCategory=${sumologic_http_source.HTTP_fastly-co-prd.category} OR _sourceCategory=network-vpn-f5 OR _sourceCategory=cms-fallback-* OR _source=cms-fallback-*"
  capabilities     = ["viewCollectors", "manageMonitors", "viewPartitions", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-CMS" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.CMS.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.CMS.name}"
  lifecycle {
    prevent_destroy = true
  }
}
