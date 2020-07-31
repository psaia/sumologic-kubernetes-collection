resource "sumologic_role" "Samizdat" {
  name             = "Samizdat"
  description      = "Samizdat Application Logs"
  filter_predicate = "(_sourceCategory=linux-* AND _sourceName=*/samizdat-*/*.log) OR _sourceCategory=webandmobile-samizdat OR _sourceCategory=webandmobile-samizdat-iad OR _sourceCategory=samizdat-graphql-elb-prd-iad1 OR _sourceCategory=samizdat-graphql-elb-prd-pdx1 OR _sourceCategory=webprd-www OR _sourceCategory=fastly-www/prd OR _sourceCategory=samizdat-dev"
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageFieldExtractionRules", "manageMonitors", "viewPartitions", "managePartitions", "manageIndexes", "manageScheduledViews", "viewFields", "viewFieldExtraction", "manageFields"]
}

