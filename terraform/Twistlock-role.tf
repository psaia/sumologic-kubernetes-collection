resource "sumologic_role" "Twistlock" {
  name             = "${var.role_prefix[var.env]}-Twistlock"
  description      = "Twistlock Application Logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.Twistlock_twistlock-console-dev.category} OR _sourceCategory=${sumologic_http_source.Twistlock_twistlock-console-stg.category} OR _sourceCategory=${sumologic_http_source.Twistlock_twistlock-console-prd.category}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys"]
}

resource "ad_group_to_ou" "ad-group-Twistlock" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Twistlock.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Twistlock.name}"
  lifecycle {
    prevent_destroy = true
  }
}
