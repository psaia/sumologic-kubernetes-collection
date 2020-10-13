resource "sumologic_role" "Collector_Managers" {
  name         = "${var.role_prefix[var.env]}-Collector Managers"
  description  = "Users Who Can Modify Collectors And Sources"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "manageCollectors", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-Collector_Managers" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Collector_Managers.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Collector_Managers.name}"
  lifecycle {
    prevent_destroy = true
  }
}
