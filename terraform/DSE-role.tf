resource "sumologic_role" "DSE" {
  name             = "${var.role_prefix[var.env]}-DSE"
  description      = "DSE Team"
  filter_predicate = "_sourceName=*/dse-*/syslog.log* OR _sourceName=*/dse-*/kern.log* OR _sourceName=*/dse-*/daemon.log* OR _sourceName=*/bi-*/syslog.log* OR _sourceName=*/bi-*/kern.log* OR _sourceName=*/bi-*/daemon.log* OR _sourceCategory=analytics-dse OR _sourceCategory=business-* OR _sourceCategory=atg-et-mon OR _sourceCategory=analytics-apis"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-DSE" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.DSE.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.DSE.name}"
  lifecycle {
    prevent_destroy = true
  }
}
