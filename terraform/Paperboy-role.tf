resource "sumologic_role" "Paperboy" {
  name             = "${var.role_prefix[var.env]}-Paperboy"
  description      = "Paper Boy Team"
  filter_predicate = "_sourceName=*paperboy-*/syslog.log* OR _sourceName=*paperboy-*/kern.log* OR _sourceName=*paperboy-*/daemon.log* OR _sourceCategory=business-paperboy"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Paperboy" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Paperboy.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Paperboy.name}"
  lifecycle {
    prevent_destroy = true
  }
}
