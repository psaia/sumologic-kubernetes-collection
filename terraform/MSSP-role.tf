resource "sumologic_role" "MSSP" {
  name             = "${var.role_prefix[var.env]}-MSSP"
  description      = "Managed Service Security Providers"
  filter_predicate = "_sourceName=*proxy-squid*/daemon.log OR _sourceName=*dns* OR _sourceName=*server-fw* OR _sourceCategory=linux-authpriv OR _sourceCategory=security-* OR _sourceCategory=network-firewall* OR _sourceCategory=network-vpn-cisco OR _sourceCategory=network-vpn-f5 OR _sourceCategory=network-wireless-aruba OR _sourceCategory=network-wireless OR _sourceCategory=network-infoblox* OR _sourceCategory=network-loadbalancer OR _sourceCategory=security-ids-suricta OR _sourceCategory=${sumologic_http_source.https-collector_dev_windows-dc.category} OR _sourceCategory=windows-dc-sap OR _sourceCategory=snare OR _sourceCategory=windows-snare OR _sourceCategory=SEP OR _sourceCategory=IDS OR _sourceCategory=cisco_vpn OR _sourceCategory=fortigate OR _sourceCategory=syslogs-firewall OR _sourceCategory=syslogs-toplayer OR _sourceCategory=ESX-VGW OR _sourceCategory=aruba OR _sourceCategory=syslogs-alienvault OR _sourceCategory=bind OR _sourceCategory=applogs-fireeye OR _sourceCategory=syslogs-ids-suricta OR _sourceCategory=syslogs-ids-snort OR _sourceCategory=AWS_EAGLE OR _sourceCategory=bit9 OR _sourceCategory=${sumologic_http_source.HTTP_tipjar-prd.category} OR _sourceCategory=${sumologic_http_source.AzureADLogs_AzureAD.category} OR _index=sumologic_audit"
  capabilities     = ["viewScheduledViews", "manageFieldExtractionRules", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "manageFields", "manageDataVolumeFeed"]
}

resource "ad_group_to_ou" "ad-group-MSSP" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.MSSP.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.MSSP.name}"
}
