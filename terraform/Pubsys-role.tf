resource "sumologic_role" "Pubsys" {
  name             = "Pubsys"
  description      = "NewsGate and Pubsys Logs"
  filter_predicate = "_sourceCategory=publishing-pubsys OR _sourceCategory=publishing-ng OR _sourceCategory=ngc-cas OR _sourceCategory=ngc-io OR _sourceCategory=ngc-web OR _sourceCategory=fp-inyt OR _sourceCategory=linux-* ngc-io OR _sourceCategory=linux-* ngc-cas OR _sourceCategory=linux-* ngc-web OR _sourceCategory=aws_eagle OR _source=nytm-pubsys-output-scripts-* OR _source=nytm-pubsys-newsgate-ConfigBase1-*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

