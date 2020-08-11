resource "sumologic_role" "fastly" {
  name             = "fastly"
  description      = "Accessing fastly logs"
  filter_predicate = "_sourceCategory=fastly-gcs-assets/stg OR _sourceCategory=fastly-static/stg OR _sourceCategory=fastly-www/stg OR _sourceCategory=fastly-gcs-assets/prd OR _sourceCategory=fastly-static/prd OR _sourceCategory=fastly-www/prd OR _sourceCategory=fastly-www-purge/stg OR _sourceCategory=fastly-mktg/stg OR _sourceCategory=fastly-mktg/prd OR _sourceCategory=fastly-mktg-purge/stg OR _sourceCategory=fastly-mktg-purge/prd OR _sourceCategory=video-service OR _sourceCategory=video-service-stg OR _sourceCategory=fastly-waf-apps/stg OR _sourceCategory=fastly-waf-apps/prd OR _sourceCategory=fastly-nytco/stg OR _sourceCategory=fastly-nytco/prd OR _sourceCategory=fastly-rss/stg OR _sourceCategory=fastly-rss/prd OR _sourceCategory=fastly-mwcm/stg OR _sourceCategory=fastly-mwcm/prd OR _sourceCategory=fastly-int/stg OR _sourceCategory=fastly-int/prd OR _sourceCategory=fastly-spiderbites/stg OR _sourceCategory=fastly-spiderbites/prd OR _sourceCategory=fastly-advertising-waf/stg OR _sourceCategory=fastly-advertising-waf/prd OR _sourceCategory=fastly-advertising/stg OR _sourceCategory=fastly-advertising/prd"
  capabilities     = ["manageFieldExtractionRules", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "manageFields"]
}

