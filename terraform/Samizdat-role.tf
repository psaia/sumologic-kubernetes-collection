resource "sumologic_role" "Samizdat" {
  name             = "${var.role_prefix[var.env]}-Samizdat"
  description      = "Samizdat Application Logs"
  filter_predicate = "(_sourceCategory=linux-* AND _sourceName=*/samizdat-*/*.log) OR _sourceCategory=${sumologic_http_source.GKE_Samizdat_Dev.category} OR _sourceCategory=webandmobile-samizdat-iad OR _sourceCategory=samizdat-graphql-elb-prd-iad1 OR _sourceCategory=samizdat-graphql-elb-prd-pdx1 OR _sourceCategory=${sumologic_http_source.HTTP_webprd-www.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-www_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_samizdat-fluentd.category}"
  capabilities     = ["viewScheduledViews", "metricsExtraction", "manageFieldExtractionRules", "manageMonitors", "viewPartitions", "managePartitions", "manageIndexes", "manageScheduledViews", "viewFields", "viewFieldExtraction", "manageFields"]
}

