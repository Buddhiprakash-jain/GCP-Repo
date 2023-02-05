resource "google_project_iam_member" "member" {
  project = "basic-tube-373302"
  role    = "roles/storage.objectViewer"
  member  = "user:buddhiprakash19evjcs@vitj.ac.in"
}
