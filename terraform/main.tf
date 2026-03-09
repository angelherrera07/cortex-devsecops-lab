provider "google" {
  project = "PROJECT_ID"
  region  = "us-central1"
}

resource "google_compute_firewall" "open_fw" {
  name    = "open-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22","80"]
  }

  source_ranges = ["0.0.0.0/0"]
}
