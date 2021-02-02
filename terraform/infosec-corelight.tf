resource "sumologic_s3_source" "infosec-corelight" {
  name          = "Corelight Logs"
  description   = "Log files from Corelight appliances"
  category      = "aws/s3"
  content_type  = "AwsS3Bucket"
  scan_interval = 300000
  paused        = false
  collector_id  = module.nytimes-infosec-corelight.sumologic_collector_id

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::550861604386:role/nyt-sumo-corelight-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "infosec-corelight-51347c84"
    path_expression = "*"
  }
}