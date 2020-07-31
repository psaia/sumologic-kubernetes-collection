resource "sumologic_role" "Personalization" {
  name             = "Personalization"
  description      = "Personalization Team"
  filter_predicate = "(_sourceCategory=linux-* AND _sourceName=*/per-*/*.log) OR _sourceCategory=webandmobile-personalization OR _index=linux*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

