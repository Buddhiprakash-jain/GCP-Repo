data "google_iam_policy" "admin" {
  binding {
    role = "roles/iam.serviceAccountUser"

    members = [
      "user:buddhiprakash19evjcs022@vitj.ac.in",
    ]
  }
}

resource "google_service_account" "sa" {
  project = "basic-tube-373302"
  account_id   = "myaccc"
  display_name = "bpacc"
}

resource "google_service_account_iam_policy" "admin-account-iam" {
  service_account_id = google_service_account.sa.name
  policy_data        = data.google_iam_policy.admin.policy_data
}

resource "google_project_iam_member" "project" {
  project = "basic-tube-373302"
  role    = "roles/editor"
  member  = "user:buddhiprakash19evjcs022@vitj.ac.in"
}
