output "cloudflare_domain" {
  value = var.cloudflare_domain
}

output "cname_value" {
  value = var.cname_value
}

output "url" {
  value = cloudflare_record.spacelift.value
}

output "zone_id" {
  value = data.cloudflare_zone.this.id
}
