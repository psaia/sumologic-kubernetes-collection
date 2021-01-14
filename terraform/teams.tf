module "dv" {
  source = "../modules/role"

  name = "dv"
  env  = var.env
}

module "offers" {
  source = "../modules/role"

  name          = "offers"
  search_filter = "_sourceCategory=${sumologic_http_source.HTTP_fastly-mktg_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mktg_stg.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mktg-purge_prd.category} OR _sourceCategory=${sumologic_http_source.HTTP_fastly-mktg-purge_stg.category}"
  capabilities  = ["viewScheduledViews", "manageFieldExtractionRules", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "viewCollectors", "manageFields", "changeDataAccessLevel"]
  group_manager = "CN=Thiaw\\, Lamine,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nytint,DC=com"
  env           = var.env
}
