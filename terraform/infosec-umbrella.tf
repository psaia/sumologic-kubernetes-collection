resource "sumologic_s3_source" "infosec-umbrella" {
  name          = "umbrella Logs"
  description   = "Log files from umbrella appliances"
  category      = "aws/s3"
  content_type  = "AwsS3Bucket"
  scan_interval = 300000
  paused        = false
  collector_id  = module.nytimes-infosec-umbrella.sumologic_collector_id

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::147536899606:role/umbrella-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-dev-umbrella-logs"
    path_expression = "*"
  }
}