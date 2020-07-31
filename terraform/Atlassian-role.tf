resource "sumologic_role" "Atlassian" {
  name             = "Atlassian"
  description      = "Atlassian Administrators"
  filter_predicate = "_collector=atlassian*"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

