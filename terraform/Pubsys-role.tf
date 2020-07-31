resource "sumologic_role" "Pubsys" {
  name             = "Pubsys"
  description      = "NewsGate and Pubsys Logs"
  filter_predicate = "_sourceCategory=publishing-pubsys or _sourceCategory=publishing-ng or _sourceCategory=ngc-cas or _sourceCategory=ngc-io or _sourceCategory=ngc-web or _sourceCategory=fp-inyt or _sourceCategory=linux-* ngc-io or _sourceCategory=linux-* ngc-cas or _sourceCategory=linux-* ngc-web or _sourceCategory=aws_eagle or\n_source=nytm-pubsys-output-scripts-* or\n_source=nytm-pubsys-newsgate-ConfigBase1-*"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel", "viewCollectors"]
}

