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