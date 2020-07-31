resource "sumologic_role" "Windows" {
  name             = "Windows"
  description      = "Windows Team"
  filter_predicate = "_sourceCategory=windows-* OR _sourceCategory=virtualization-esx OR _sourceCategory=infra-test OR _sourceCategory=vmware-tel"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

