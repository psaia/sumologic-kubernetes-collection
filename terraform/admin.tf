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
}

resource "ad_group_to_ou" "ad-group-admin" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.admin.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.admin.name}"
}
