module "dv-notifications-test" {
  source = "../modules/slack-connection"

  name    = "dv-notifications-test"
  webhook = "https://hooks.slack.com/services/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"
}
