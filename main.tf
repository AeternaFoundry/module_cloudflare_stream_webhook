resource "cloudflare_stream_webhook" "stream_webhooks" {
  for_each = var.stream_webhooks

  account_id       = each.value.account_id
  notification_url = each.value.notification_url
}

