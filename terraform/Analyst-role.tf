resource "sumologic_role" "Analyst" {
  name         = "${var.role_prefix[var.env]}-Analyst"
  description  = "Infrastructure & Operations Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

