resource "sumologic_role" "fastly" {
  name             = "fastly"
  description      = "Accessing fastly logs"
  filter_predicate = "_sourceCategory=fastly-gcs-assets/stg or _sourceCategory=fastly-static/stg or _sourceCategory=fastly-www/stg or _sourceCategory=fastly-gcs-assets/prd or _sourceCategory=fastly-static/prd or _sourceCategory=fastly-www/prd or _sourceCategory=fastly-www-purge/stg or _sourceCategory=fastly-mktg/stg or _sourceCategory=fastly-mktg/prd or _sourceCategory=fastly-mktg-purge/stg or _sourceCategory=fastly-mktg-purge/prd or _sourceCategory=video-service or _sourceCategory=video-service-stg or _sourceCategory=fastly-waf-apps/stg or _sourceCategory=fastly-waf-apps/prd or _sourceCategory=fastly-nytco/stg or _sourceCategory=fastly-nytco/prd or _sourceCategory=fastly-rss/stg or _sourceCategory=fastly-rss/prd or _sourceCategory=fastly-mwcm/stg or _sourceCategory=fastly-mwcm/prd or _sourceCategory=fastly-int/stg or _sourceCategory=fastly-int/prd or _sourceCategory=fastly-spiderbites/stg or _sourceCategory=fastly-spiderbites/prd OR _sourceCategory=fastly-advertising-waf/stg OR\n_sourceCategory=fastly-advertising-waf/prd OR\n_sourceCategory=fastly-advertising/stg OR\n_sourceCategory=fastly-advertising/prd"
  capabilities     = ["manageFieldExtractionRules", "manageMonitors", "viewPartitions", "viewFields", "viewFieldExtraction", "manageFields"]
}

