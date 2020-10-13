resource "sumologic_role" "photo" {
  name             = "${var.role_prefix[var.env]}-photo"
  description      = "Photo team"
  filter_predicate = "_sourceCategory=merlin-proxy OR _sourceCategory=merlin-proxy-elb OR _collector=mrlnmiode01"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-photo" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.photo.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.photo.name}"
  lifecycle {
    prevent_destroy = true
  }
}
