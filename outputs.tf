output "cloudflare_domain" {
  value = var.cloudflare_domain
}

output "url" {
  value = cloudflare_record.spacelift.value
}

output "zone_id" {
  value = data.cloudflare_zone.this.id
}
