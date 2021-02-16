resource "sumologic_s3_source" "infosec-corelight" {
  name                         = "corelight logs"
  description                  = "Log files from corelight appliances"
  category                     = "corelight"
  content_type                 = "AwsS3Bucket"
  scan_interval                = 300000
  paused                       = false
  collector_id                 = module.nytimes-infosec-corelight.sumologic_collector_id
  multiline_processing_enabled = false

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::550861604386:role/corelight-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-corelight-51347c84"
    path_expression = "*"
  }

  filters {
    name        = "Exclude Comments"
    filter_type = "Exclude"
    regexp      = "#.*"
  }
}

# Parse standard fields at ingest
resource "sumologic_field_extraction_rule" "corelight-basic" {
  name             = "Corelight basic data extraction"
  scope            = "_collector=nytimes-infosec-corelight"
  parse_expression = <<EOT
        parse "\"id.orig_h\":\"*\"" as src_ip nodrop
        | parse "\"id.orig_p\":*" as src_port nodrop
        | parse "\"id.resp_h\":\"*\"" as dest_ip nodrop
        | parse "\"id.resp_p\":*" as dest_port nodrop
        EOT
  enabled          = true
}

# Parse out specific log type
resource "sumologic_field_extraction_rule" "corelight-event-type" {
  name             = "Corelight event type"
  scope            = "_collector=nytimes-infosec-corelight"
  parse_expression = <<EOT
      parse regex field=_sourcename "\/(?<event_type>[a-z]+)_20"
      EOT
  enabled          = true
}