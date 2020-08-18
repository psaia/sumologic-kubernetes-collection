resource "sumologic_role" "Security" {
  name         = "${var.role_prefix[var.env]}-Security"
  description  = "SecOps Team"
  capabilities = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

