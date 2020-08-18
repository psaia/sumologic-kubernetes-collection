resource "sumologic_role" "Aristo" {
  name             = "${var.role_prefix[var.env]}-Aristo"
  description      = "Aristo Team"
  filter_predicate = "_sourceCategory=business-aristo* OR _sourceCategory=business-ax-etl OR _sourceCategory=aristo-prd OR _sourceCategory=axpetl-prd OR _sourceCategory=ppd"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

