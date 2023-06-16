resource "cloudflare_record" "spacelift" {
  zone_id = data.cloudflare_zone.this.id
  name    = "spacelift"
  value   = var.cname_value
  type    = "CNAME"
  proxied = true
}

data "cloudflare_zone" "this" {
  name = var.cloudflare_domain
}
