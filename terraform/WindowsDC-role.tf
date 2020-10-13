resource "sumologic_role" "WindowsDC" {
  name             = "${var.role_prefix[var.env]}-WindowsDC"
  description      = "Windows DC"
  filter_predicate = "_sourceCategory=dns-daemon OR _sourceCategory=${sumologic_http_source.https-collector_dev_windows-dc.category} OR _sourceCategory=virtualization-esx"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-WindowsDC" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.WindowsDC.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.WindowsDC.name}"
  lifecycle {
    prevent_destroy = true
  }
}
