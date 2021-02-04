resource "sumologic_s3_source" "infosec-corelight" {
  name          = "corelight Logs"
  description   = "Log files from corelight appliances"
  category      = "aws/s3"
  content_type  = "AwsS3Bucket"
  scan_interval = 300000
  paused        = false
  collector_id  = module.nytimes-infosec-corelight.sumologic_collector_id

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::147536899606:role/corelight-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-corelight-396d6b7c"
    path_expression = "*"
  }
}