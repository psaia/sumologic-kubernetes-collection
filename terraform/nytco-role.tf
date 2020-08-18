resource "sumologic_role" "nytco" {
  name             = "${var.role_prefix[var.env]}-nytco"
  description      = "NYTCO application logs"
  filter_predicate = "_sourceCategory=${sumologic_http_source.NYTCO_nytco-stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-nytco_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-nytco_prd.category} OR _sourceCategory=${sumologic_http_source.NYTCO_nytco-prd.category}"
  capabilities     = ["viewScheduledViews", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

