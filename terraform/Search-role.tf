resource "sumologic_role" "Search" {
  name             = "Search"
  description      = "Search Team"
  filter_predicate = "_sourceCategory=webandmobile-search or _sourceCategory=webandmobile-seo or\n_sourceCategory=search-api-* or\n_source=search-api-* or\n_sourceCategory=nytimes-search-omnibus-* or\n_sourceCategory=nytimes-search-add-es-*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction"]
}

