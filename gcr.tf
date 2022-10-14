resource "google_container_registry" "registry" {
  project  = var.project_id
  location = "US"
}

resource "google_storage_bucket_iam_member" "admin" {
  bucket = google_container_registry.registry.id
  role = "roles/storage.admin"
  member = "user:obed.n.munoz@intel.com"
}
