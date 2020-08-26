resource "sumologic_role" "Analyst" {
  name         = "${var.role_prefix[var.env]}-Analyst"
  description  = "Infrastructure & Operations Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-Analyst" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Analyst.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Analyst.name}"
}

