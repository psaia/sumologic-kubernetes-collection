resource "sumologic_elb_source" "infosec-vault-aws" {
  name                         = "Vault AWS LB logs"
  description                  = "Log files from Vault ALBs"
  category                     = "aws/elb"
  content_type                 = "AwsElbBucket"
  scan_interval                = 30000
  paused                       = false
  collector_id                 = module.nytimes-dv-vault-aws.sumologic_collector_id
  multiline_processing_enabled = false

  authentication {
    type     = "AWSRoleBasedAuthentication"
    role_arn = "arn:aws:iam::319840092804:role/vault-alb-sumo-ingest-role"
  }

  path {
    type            = "S3BucketPathExpression"
    bucket_name     = "nyt-vault-alb-logs-319840092804-prd"
    path_expression = "AWSLogs/319840092804/elasticloadbalancing/*"
  }
}
