resource "sumologic_role" "Pubsys" {
  name             = "${var.role_prefix[var.env]}-Pubsys"
  description      = "NewsGate and Pubsys Logs"
  filter_predicate = "_sourceCategory=publishing-pubsys OR _sourceCategory=publishing-ng OR _sourceCategory=ngc-cas OR _sourceCategory=ngc-io OR _sourceCategory=ngc-web OR _sourceCategory=fp-inyt OR _sourceCategory=linux-* ngc-io OR _sourceCategory=linux-* ngc-cas OR _sourceCategory=linux-* ngc-web OR _sourceCategory=aws_eagle OR _source=nytm-pubsys-output-scripts-* OR _source=nytm-pubsys-newsgate-ConfigBase1-*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel", "viewCollectors"]
}

resource "ad_group_to_ou" "ad-group-Pubsys" {
  ou_distinguished_name = var.ad_oudn
  group_name            = sumologic_role.Pubsys.name
  description           = "AD Group for Sumo Logic RBAC group ${sumologic_role.Pubsys.name}"
  lifecycle {
    prevent_destroy = true
  }
}
