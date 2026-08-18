resource "google_compute_backend_service" "default" {
  name                  = "proto-2026-08-18"
  project               = var.project_id
  load_balancing_scheme = "EXTERNAL_MANAGED"
  log_config {
    enable      = true
    sample_rate = 1.0
  }
  
  #  No 'backend' subblock for the purpose of this prototype, as it's optional

  iap {
    enabled              = true
    oauth2_client_id     = "" # Matching the values in US-Live as of 2026-08-18
    oauth2_client_secret = ""
  }
}
