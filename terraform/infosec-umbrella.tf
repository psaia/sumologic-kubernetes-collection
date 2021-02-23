resource "sumologic_s3_source" "infosec-umbrella" {
  name          = "umbrella logs"
  description   = "Log files from umbrella appliances"
  category      = "umbrella"
  content_type  = "AwsS3Bucket"
  scan_interval = 300000
  paused        = false
  collector_id  = module.nytimes-infosec-umbrella.sumologic_collector_id

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::550861604386:role/umbrella-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-prd-umbrella-logs"
    path_expression = "*"
  }
}