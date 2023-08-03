resource "cloudflare_record" "spacelift" {
  zone_id = data.cloudflare_zone.this.id
  name    = "spacelift1"
  value   = var.cname_value
  type    = "CNAME"
  proxied = true
}

data "cloudflare_zone" "this" {
  name = var.cloudflare_domain
}
