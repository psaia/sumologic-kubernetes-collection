resource "sumologic_role" "Network" {
  name             = "${var.role_prefix[var.env]}-Network"
  description      = "Network Team"
  filter_predicate = "_index=Network OR _index=Virtualization OR _sourceCategory=voice-tel* OR _sourceCategory=network-* OR _sourceCategory=forti-analyzer OR _sourceCategory=\"clearpass Logs\""
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-Network" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Network.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Network.name}"
}
