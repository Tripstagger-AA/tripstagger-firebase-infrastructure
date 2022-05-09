resource "google_firebase_project" "default" {
  provider = google-beta

}
resource "google_firebase_project_location" "default" {
  provider = google-beta

  location_id = var.region

  depends_on = [
    google_firebase_project.default,
  ]
}

resource "google_firebase_web_app" "web_app" {
  provider     = google-beta
  display_name = var.app_anme

  depends_on = [google_firebase_project.default]
}