resource "sumologic_role" "Compliance" {
  name         = "Compliance"
  description  = "Compliance Team"
  capabilities = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

