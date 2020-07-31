resource "sumologic_role" "WWW" {
  name             = "WWW"
  description      = "WWW Team"
  filter_predicate = "_sourceCategory=webandmobile-www or _sourceCategory=webstg-www or _sourceCategory=webprd-www or _sourceCategory=mobilewebstg-www or _sourceCategory=mobilewebprd-www or _sourceCategory=intf.nyt.com or _sourceCategory=intf-w.nyt.com or _sourceCategory=int.nyt.com or _sourceCategory=int.stg.nyt.com or _sourceCategory=int-static-prd or _sourceCategory=int-static-stg or _sourceCategory=int-static-w-prd or _sourceCategory=int-w-nyt-com or \t_sourceCategory=webandmobile-* or _sourceName=*/www-*/syslog.log* or _sourceName=*/www-*/kern.log* or _sourceName=*/www-*/daemon.log* or _sourceCategory=uploads/webandmobile-www-old or _sourceCategory=webandmobile-projectvi-dev or _sourceCategory=platforms.nytimes.com-prd OR _sourceCategory=fastly-static-prd or _sourceCategory=fastly-static-stg or _sourceCategory=mwcm-dev or _sourceCategory=mwcm-prd or _sourceCategory=mwcm-stg or _sourceCategory=stg/co-fastly or _sourceCategory=prd/co-fastly or _sourceCategory=stg/cooking-fastly or _sourceCategory=prd/cooking-fastly or\n_sourceCategory=stg/fastly-query or\n_sourceCategory=prd/fastly-query or _sourceCategory=fastly-g1-prd or _sourceCategory=fastly-g1-stg or _sourceCategory=attribute-prd or _sourceCategory=attribute-stg or _sourceCategory=proof-of-concept or _sourceCategory=elections-prd or _sourceCategory=fastly-www/prd or _sourcecategory=fastly-www/stg"
  capabilities     = ["viewScheduledViews", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "changeDataAccessLevel"]
}

