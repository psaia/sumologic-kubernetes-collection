resource "sumologic_role" "Shared_Cluster_DEV" {
  name             = "${var.role_prefix[var.env]}-Shared Cluster DEV"
  description      = "k8s Shared Cluster logs dev"
  filter_predicate = "_collector=${sumologic_collector.nyt-sharecluster-dev_shared-dev-east-r0.name}"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "manageUsersAndRoles", "manageCollectors", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-Shared_Cluster_DEV" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Shared_Cluster_DEV.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Shared_Cluster_DEV.name}"
}
