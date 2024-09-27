resource "google_service_account" "service_account" {
  for_each     = var.service_accounts
  account_id   = each.value.account_id
  display_name = each.value.display_name
}

# Assign different roles to each service account
resource "google_project_iam_member" "service_account_roles" {
  for_each = {
    for pair in flatten([
      for sa_key, sa in var.service_accounts : [
        for role in sa.roles : {
          key = "${sa_key}-${role}"
          service_account_email = google_service_account.service_account[sa_key].email
          role = role
        }
      ]
    ]) : pair.key => pair
  }

  project = var.project_id # Replace with your project ID
  member  = "serviceAccount:${each.value.service_account_email}"
  role    = each.value.role
}