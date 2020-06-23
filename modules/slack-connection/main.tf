resource "sumologic_connection" "connection" {
  type            = "WebhookConnection"
  name            = "slack-${var.name}"
  description     = "Slack Webhook for ${var.name} (Managed by Terraform)"
  url             = var.webhook
  default_payload = var.default_payload
  webhook_type    = "Slack"
}
