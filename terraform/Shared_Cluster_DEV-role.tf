resource "sumologic_role" "Shared_Cluster_DEV" {
  name             = "${var.role_prefix[var.env]}-Shared Cluster DEV"
  description      = "k8s Shared Cluster logs dev"
  filter_predicate = "_collector=${sumologic_collector.nyt-sharecluster-dev_shared-dev-east-r0.name}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "manageUsersAndRoles", "manageCollectors", "viewCollectors"]
}

