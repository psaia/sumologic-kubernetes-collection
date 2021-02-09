resource "sumologic_s3_source" "infosec-corelight" {
  name                         = "corelight Logs"
  description                  = "Log files from corelight appliances"
  category                     = "corelight"
  content_type                 = "AwsS3Bucket"
  scan_interval                = 300000
  paused                       = false
  collector_id                 = module.nytimes-infosec-corelight.sumologic_collector_id
  multiline_processing_enabled = false

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::147536899606:role/corelight-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-corelight-396d6b7c"
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
        json "id.orig_h","id.orig_p","id.resp_h","id.resp_p" as src_ip,src_port,dest_ip,dest_port
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