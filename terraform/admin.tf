resource "sumologic_role" "admin" {
  name        = "${var.role_prefix[var.env]}-admin"
  description = "Sumo Admins"
  capabilities = [
    "viewScheduledViews",
    "manageAuditDataFeed",
    "manageAccessKeys",
    "metricsExtraction",
    "manageFieldExtractionRules",
    "manageMonitors",
    "metricsRules",
    "viewPartitions",
    "shareDashboardWhitelist",
    "manageConnections",
    "managePartitions",
    "manageIndexes",
    "manageScheduledViews",
    "shareDashboardWorld",
    "viewCse",
    "viewAccountOverview",
    "ipWhitelisting",
    "viewFields",
    "viewFieldExtraction",
    "manageS3DataForwarding",
    "manageBudgets",
    "manageSaml",
    "manageContent",
    "createAccessKeys",
    "manageSupportAccountAccess",
    "shareDashboardOutsideOrg",
    "metricsTransformation",
    "managePasswordPolicy",
    "manageOrgSettings",
    "manageUsersAndRoles",
    "changeDataAccessLevel",
    "manageCollectors",
    "viewCollectors",
    "manageFields",
    "manageDataVolumeFeed",
    "manageTokens",
  ]
  # This filter for the admin role is required becuause the default account's (2FA Sumologic) one.
  # The detault account's filter is currently set up to block access to any collectors. Without this additional 
  # filter below, admins were not able to view any logs.
  filter_predicate = "_sourceCategory=*"
}

resource "ad_group_to_ou" "ad-group-admin" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.admin.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.admin.name}"
  lifecycle {
    prevent_destroy = true
  }
}
