resource "sumologic_role" "Atlassian" {
  name             = "${var.role_prefix[var.env]}-Atlassian"
  description      = "Atlassian Administrators"
  filter_predicate = "_collector=atlassian*"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

resource "ad_group_to_ou" "ad-group-Atlassian" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Atlassian.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Atlassian.name}"
}

