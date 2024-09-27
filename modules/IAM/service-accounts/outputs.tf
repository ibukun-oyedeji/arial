# Output the service account email addresses
output "service_account_emails" {
  description = "Email addresses of the created service accounts"
  value = {
    for sa in google_service_account.service_account : sa.account_id => sa.email
  }
}

# Output the service account unique IDs
output "service_account_ids" {
  description = "Unique IDs of the created service accounts"
  value = {
    for sa in google_service_account.service_account : sa.account_id => sa.unique_id
  }
}
