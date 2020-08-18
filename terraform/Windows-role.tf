resource "sumologic_role" "Windows" {
  name             = "${var.role_prefix[var.env]}-Windows"
  description      = "Windows Team"
  filter_predicate = "_sourceCategory=windows-* OR _sourceCategory=virtualization-esx OR _sourceCategory=${sumologic_http_source.https-collector_dev_infra-test.category} OR _sourceCategory=vmware-tel"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

