module "waf" {
  source = "../modules/role"

  name          = "waf"
  search_filter = module.nytimes-waf.search_filter
  capabilities  = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "createAccessKeys", "changeDataAccessLevel", "viewCollectors"]
  group_manager = "CN=Semel\\, Katherine,OU=Users,OU=NYHQ,OU=NYTMG,DC=ent,DC=nytint,DC=com"
  env           = var.env
}
