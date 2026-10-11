output "stream_webhooks_account_id" {
  description = "Map of account_id values across all stream_webhooks, keyed the same as var.stream_webhooks except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_stream_webhook.stream_webhooks : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "stream_webhooks_modified" {
  description = "Map of modified values across all stream_webhooks, keyed the same as var.stream_webhooks except keys with no modified are omitted"
  value       = { for k, v in cloudflare_stream_webhook.stream_webhooks : k => v.modified if v.modified != null && length(v.modified) > 0 }
}
output "stream_webhooks_notification_url" {
  description = "Map of notification_url values across all stream_webhooks, keyed the same as var.stream_webhooks except keys with no notification_url are omitted"
  value       = { for k, v in cloudflare_stream_webhook.stream_webhooks : k => v.notification_url if v.notification_url != null && length(v.notification_url) > 0 }
}
output "stream_webhooks_secret" {
  description = "Map of secret values across all stream_webhooks, keyed the same as var.stream_webhooks except keys with no secret are omitted"
  value       = { for k, v in cloudflare_stream_webhook.stream_webhooks : k => v.secret if v.secret != null && length(v.secret) > 0 }
  sensitive   = true
}

