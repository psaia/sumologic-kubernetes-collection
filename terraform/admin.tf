resource "sumologic_role" "admin" {
  name        = "${var.role_prefix[var.env]}-admin"
  description = "Sumo Admins"
  capabilities = [
    "viewCollectors",
    "manageCollectors",
    "manageBudgets",
    "manageDataVolumeFeed",
    "viewFieldExtraction",
    "manageFieldExtractionRules",
    "manageS3DataForwarding",
    "manageContent",
    "dataVolumeIndex",
    "viewConnections",
    "manageConnections",
    "viewScheduledViews",
    "manageScheduledViews",
    "viewPartitions",
    "managePartitions",
    "viewFields",
    "manageFields",
    "viewAccountOverview",
    "manageTokens",
    "manageDataStreams",
    "manageEntityTypeConfig",
    "manageMonitors",
    "metricsTransformation",
    "metricsExtraction",
    "metricsRules",
    "managePasswordPolicy",
    "ipWhitelisting",
    "manageAccessKeys",
    "manageSupportAccountAccess",
    "manageAuditDataFeed",
    "manageSaml",
    "shareDashboardOutsideOrg",
    "manageOrgSettings",
    "changeDataAccessLevel",
    "shareDashboardWorld",
    "shareDashboardWhitelist",
    "manageUsersAndRoles",
    "searchAuditIndex",
    "auditEventIndex",
  ]
}

resource "ad_group_to_ou" "ad-group-admin" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.admin.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.admin.name}"
}
