resource "sumologic_s3_source" "infosec-corelight" {
  name                         = "corelight Logs"
  description                  = "Log files from corelight appliances"
  category                     = "aws/s3"
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

  default_date_formats {
    format  = "epoch"
    locator = <<EOT
        ^([^.]+)\.
        EOT
  }

  filters {
    name        = "Remove Comments"
    filter_type = "Exclude"
    regexp      = "^#.*"
  }
}

# Parse key fields at ingest
resource "sumologic_field_extraction_rule" "corelight-basic" {
  name             = "Corelight basic data extraction"
  scope            = "_collector=nytimes-infosec-corelight"
  parse_expression = <<EOT
        parse regex "^\d{10}\.\d{6}\t(?<id>\w+)\t(?<src_ip>[\d.]+)\t(?<src_port>[\d]+)\t(?<dest_ip>[\d.]+)\t(?<dest_port>[\d.]+)\t(?<event>.*)"
        EOT
  enabled          = true
}