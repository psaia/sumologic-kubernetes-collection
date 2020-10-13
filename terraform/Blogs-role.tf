resource "sumologic_role" "Blogs" {
  name             = "${var.role_prefix[var.env]}-Blogs"
  description      = "Blogs Team"
  filter_predicate = "_sourceCategory=webandmobile-blogs5 OR _sourceName=*blogs5-*/syslog.log* OR _sourceName=*blogs5-*/kern.log* OR _sourceName=*blogs5-*/daemon.log*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Blogs" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Blogs.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Blogs.name}"
  lifecycle {
    prevent_destroy = true
  }
}
