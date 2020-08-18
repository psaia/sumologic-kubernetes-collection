resource "sumologic_role" "Compliance" {
  name         = "${var.role_prefix[var.env]}-Compliance"
  description  = "Compliance Team"
  capabilities = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

