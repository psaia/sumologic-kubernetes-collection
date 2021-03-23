# Fastly resources are managed separately due to their legacy naming conventions

resource "sumologic_http_source" "HTTP_fastly-advertising-waf_prd" {
  name                         = "fastly-advertising-waf/prd"
  description                  = "fastly advertising service waf log"
  category                     = "fastly-advertising-waf/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-advertising-waf_stg" {
  name                         = "fastly-advertising-waf/stg"
  description                  = "advertising waf log endpoint"
  category                     = "fastly-advertising-waf/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-advertising_prd" {
  name                         = "fastly-advertising/prd"
  description                  = "advertising prod fastly logs"
  category                     = "fastly-advertising/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-advertising_stg" {
  name                         = "fastly-advertising/stg"
  description                  = "advertising staging fastly logs"
  category                     = "fastly-advertising/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-co-prd" {
  name                         = "fastly-co-prd"
  description                  = "for co.prd fastly service"
  category                     = "prd/co-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-co-stg" {
  name                         = "fastly-co-stg"
  description                  = "for fastly co.dev and co.stg services"
  category                     = "stg/co-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-cooking-prd" {
  name                         = "fastly-cooking-prd"
  description                  = "for fastly cooking.prd service"
  category                     = "prd/cooking-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-cooking-stg" {
  name                         = "fastly-cooking-stg"
  description                  = "for cooking.dev and cooking.stg fastly services"
  category                     = "stg/cooking-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-g1-prd" {
  name                         = "fastly-g1-prd"
  description                  = "Infra-71078"
  category                     = "fastly-g1-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-g1-stg" {
  name                         = "fastly-g1-stg"
  description                  = "Infra-71078"
  category                     = "fastly-g1-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "Etc/UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-gcs-assets_prd" {
  name                         = "fastly-gcs-assets/prd"
  description                  = "Fastly gcs assests production"
  category                     = "fastly-gcs-assets/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-gcs-assets_stg" {
  name                         = "fastly-gcs-assets/stg"
  description                  = "Fastly GCS assets staging"
  category                     = "fastly-gcs-assets/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-int_prd" {
  name                         = "fastly-int/prd"
  description                  = "Fastly int.nyt.com production"
  category                     = "fastly-int/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-int_stg" {
  name                         = "fastly-int/stg"
  description                  = "Fastly int.nyt.com staging logs"
  category                     = "fastly-int/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg-purge_prd" {
  name                         = "fastly-mktg-purge/prd"
  description                  = "Fastly Maketing Purge production"
  category                     = "fastly-mktg-purge/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg-purge_stg" {
  name                         = "fastly-mktg-purge/stg"
  description                  = "Fastly Marketing Purge staging"
  category                     = "fastly-mktg-purge/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg_prd" {
  name                         = "fastly-mktg/prd"
  description                  = "Fastly Marketing production"
  category                     = "fastly-mktg/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mktg_stg" {
  name                         = "fastly-mktg/stg"
  description                  = "Fastly Marketing staging"
  category                     = "fastly-mktg/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mwcm_prd" {
  name                         = "fastly-mwcm/prd"
  description                  = "MWCM fastly production logs"
  category                     = "fastly-mwcm/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mwcm_stg" {
  name                         = "fastly-mwcm/stg"
  description                  = "MWCM fastly staging logs"
  category                     = "fastly-mwcm/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-nytco_prd" {
  name                         = "fastly-nytco/prd"
  description                  = "NYTCO Production fastly logs"
  category                     = "fastly-nytco/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-nytco_stg" {
  name                         = "fastly-nytco/stg"
  description                  = "NYTCO Fastly staging logs"
  category                     = "fastly-nytco/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-rss_prd" {
  name                         = "fastly-rss/prd"
  description                  = "Fastly RSS Production logs"
  category                     = "fastly-rss/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-rss_stg" {
  name                         = "fastly-rss/stg"
  description                  = "Fastly RSS Staging logs"
  category                     = "fastly-rss/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static-prd" {
  name                         = "fastly-static-prd"
  description                  = "Fastly Static Error Logs"
  category                     = "fastly-static-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static-stg" {
  name                         = "fastly-static-stg"
  description                  = "Fasty static error logs"
  category                     = "fastly-static-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static_prd" {
  name                         = "fastly-static/prd"
  description                  = "Fastly static production"
  category                     = "fastly-static/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-static_stg" {
  name                         = "fastly-static/stg"
  description                  = "Fastly static staging"
  category                     = "fastly-static/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-waf-apps_prd" {
  name                         = "fastly-waf-apps/prd"
  description                  = "Fastly WAF App production logs"
  category                     = "fastly-waf-apps/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-waf-apps_stg" {
  name                         = "fastly-waf-apps/stg"
  description                  = "Fastly WAF APP Staging logs"
  category                     = "fastly-waf-apps/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www-purge_prd" {
  name                         = "fastly-www-purge/prd"
  description                  = "Fastly WWW purge production DV-2179"
  category                     = "fastly-www-purge/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www-purge_stg" {
  name                         = "fastly-www-purge/stg"
  description                  = "fastly-www-purge/stg Fastly WWW purge staging DV-2179"
  category                     = "fastly-www-purge/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www_prd" {
  name                         = "fastly-www/prd"
  description                  = "Fastly www production"
  category                     = "fastly-www/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-www_stg" {
  name                         = "fastly-www/stg"
  description                  = "Fastly www staging"
  category                     = "fastly-www/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_homedelivery-prd" {
  name                         = "homedelivery-prd"
  description                  = "homedelivery prod fastly logs"
  category                     = "prd/homedelivery-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_homedelivery-stg" {
  name                         = "homedelivery-stg"
  description                  = "homedelivery staging fastly logs"
  category                     = "stg/homedelivery-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_mwcm-dev" {
  name                         = "mwcm-dev"
  description                  = "Fastly mwcm-dev"
  category                     = "mwcm-dev"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_mwcm-prd" {
  name                         = "mwcm-prd"
  description                  = "Fastly mwcm-prd"
  category                     = "mwcm-prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_mwcm-stg" {
  name                         = "mwcm-stg"
  description                  = "Fastly mwcm-stg"
  category                     = "mwcm-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_myaccount-prd" {
  name                         = "myaccount-prd"
  category                     = "prd/myaccount-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_myaccount-stg" {
  name                         = "myaccount-stg"
  category                     = "stg/myaccount-fastly"
  collector_id                 = sumologic_collector.HTTP.id
  content_type                 = "Other"
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_prd_fastly-query" {
  name                         = "prd/fastly-query"
  category                     = "prd/fastly-query"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_stg_fastly-query" {
  name                         = "stg/fastly-query"
  category                     = "stg/fastly-query"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_video-service" {
  name                         = "video-service"
  description                  = "Fastly video service"
  category                     = "video-service"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_video-service-stg" {
  name                         = "video-service-stg"
  description                  = "Fastly video service staging"
  category                     = "video-service-stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "SEO_fastly-spiderbites_prd" {
  name                         = "fastly-spiderbites/prd"
  description                  = "sumo log for fastly spiderbites service in PRD"
  category                     = "fastly-spiderbites/prd"
  collector_id                 = sumologic_collector.SEO.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "SEO_fastly-spiderbites_stg" {
  name                         = "fastly-spiderbites/stg"
  description                  = "sumo log for fastly spiderbites dev and stg"
  category                     = "fastly-spiderbites/stg"
  collector_id                 = sumologic_collector.SEO.id
  multiline_processing_enabled = true
  timezone                     = "America/New_York"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-myaccount_prd" {
  name                         = "fastly-myaccount/prd"
  description                  = "Fastly myaccount production"
  category                     = "fastly-myaccount/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-myaccount_stg" {
  name                         = "fastly-myaccount/stg"
  description                  = "Fastly myaccount staging"
  category                     = "fastly-myaccount/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-myaccount_dev" {
  name                         = "fastly-myaccount/dev"
  description                  = "Fastly myaccount dev"
  category                     = "fastly-myaccount/dev"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-bestsellers_dev" {
  name                         = "fastly-bestsellers/dev"
  description                  = "Fastly bestsellers dev"
  category                     = "fastly-bestsellers/dev"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-bestsellers_stg" {
  name                         = "fastly-bestsellers/stg"
  description                  = "Fastly bestsellers stg"
  category                     = "fastly-bestsellers/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-bestsellers_prd" {
  name                         = "fastly-bestsellers/prd"
  description                  = "Fastly bestsellers prd"
  category                     = "fastly-bestsellers/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mobile-feedlocator_dev" {
  name                         = "fastly-mobile-feedlocator/dev"
  description                  = "Fastly mobile feed locator dev"
  category                     = "fastly-mobile-feedlocator/dev"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mobile-feedlocator_stg" {
  name                         = "fastly-mobile-feedlocator/stg"
  description                  = "Fastly mobile feed locator stg"
  category                     = "fastly-mobile-feedlocator/stg"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}

resource "sumologic_http_source" "HTTP_fastly-mobile-feedlocator_prd" {
  name                         = "fastly-mobile-feedlocator/prd"
  description                  = "Fastly mobile feed locator prd"
  category                     = "fastly-mobile-feedlocator/prd"
  collector_id                 = sumologic_collector.HTTP.id
  multiline_processing_enabled = true
  timezone                     = "UTC"
  use_autoline_matching        = true
  automatic_date_parsing       = true
  message_per_request          = false
  force_timezone               = false
}
