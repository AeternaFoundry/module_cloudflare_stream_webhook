variable "stream_webhooks" {
  description = <<EOT
Map of stream_webhooks, attributes below
Required:
    - account_id
Optional:
    - notification_url
EOT

  type = map(object({
    account_id       = string
    notification_url = optional(string)
  }))
}

