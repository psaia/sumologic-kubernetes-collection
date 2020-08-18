resource "sumologic_role" "Atlassian" {
  name             = "${var.role_prefix[var.env]}-Atlassian"
  description      = "Atlassian Administrators"
  filter_predicate = "_collector=atlassian*"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

