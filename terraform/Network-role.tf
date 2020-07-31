resource "sumologic_role" "Network" {
  name             = "Network"
  description      = "Network Team"
  filter_predicate = "_index=Network OR _index=Virtualization OR _sourceCategory=voice-tel* OR _sourceCategory=network-* OR _sourceCategory=forti-analyzer"
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "viewCollectors"]
}

