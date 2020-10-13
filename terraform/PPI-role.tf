resource "sumologic_role" "PPI" {
  name             = "${var.role_prefix[var.env]}-PPI"
  description      = "Publishing system logs"
  filter_predicate = "_source=business-ppi-* OR _sourceCategory=${sumologic_http_source.Business-PPI_business-ppi-dev.category} OR _sourceCategory=business-ppi-syslog"
  capabilities     = ["manageMonitors", "viewPartitions", "createAccessKeys"]
}

resource "ad_group_to_ou" "ad-group-PPI" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.PPI.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.PPI.name}"
  lifecycle {
    prevent_destroy = true
  }
}
