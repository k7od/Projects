provider "google" {
  project = "student-00335"
  region  = var.region
  zone    = var.zone
}

# -----------------------------
# HEALTH CHECK
# -----------------------------
resource "google_compute_health_check" "http_hc" {
  name = "web-health-check"

  http_health_check {
    port = 80
  }
}

# -----------------------------
# INSTANCE GROUP
# -----------------------------
resource "google_compute_instance_group" "web_group" {
  name = "web-instance-group"
  zone = var.zone

  instances = [
    for vm in var.vm_names :
    "projects/student-00335/zones/${var.zone}/instances/${vm}"
  ]

  named_port {
    name = "http"
    port = 80
  }
}

# -----------------------------
# BACKEND SERVICE
# -----------------------------
resource "google_compute_backend_service" "backend" {
  name      = "web-backend"
  protocol  = "HTTP"
  port_name = "http"

  backend {
    group = google_compute_instance_group.web_group.self_link
  }

  health_checks = [
    google_compute_health_check.http_hc.self_link
  ]
}

# -----------------------------
# URL MAP
# -----------------------------
resource "google_compute_url_map" "url_map" {
  name            = "web-url-map"
  default_service = google_compute_backend_service.backend.self_link
}

# -----------------------------
# HTTP PROXY
# -----------------------------
resource "google_compute_target_http_proxy" "proxy" {
  name    = "web-proxy"
  url_map = google_compute_url_map.url_map.self_link
}

# -----------------------------
# GLOBAL IP
# -----------------------------
resource "google_compute_global_address" "lb_ip" {
  name = "web-lb-ip"
}

# -----------------------------
# FORWARDING RULE
# -----------------------------
resource "google_compute_global_forwarding_rule" "forwarding_rule" {
  name       = "web-forwarding-rule"
  target     = google_compute_target_http_proxy.proxy.self_link
  port_range = "80"
  ip_address = google_compute_global_address.lb_ip.address
}