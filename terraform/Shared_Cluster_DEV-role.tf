resource "sumologic_role" "Shared_Cluster_DEV" {
  name             = "Shared Cluster DEV"
  description      = "k8s Shared Cluster logs dev"
  filter_predicate = "_collector=nyt-sharecluster-dev_shared-dev-east-r0"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "manageUsersAndRoles", "manageCollectors", "viewCollectors"]
}

