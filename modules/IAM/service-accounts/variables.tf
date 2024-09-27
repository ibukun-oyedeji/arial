variable "service_accounts" {
  description = "List of service accounts with account_id and display_name"
  type = map(object({
    account_id   = string
    display_name = string
    roles        = list(string)
  }))
  # default = {
  #   "service_account_1" = {
  #     account_id   = "service-account-id-1"
  #     display_name = "Service Account 1"
  #   },
  #   "service_account_2" = {
  #     account_id   = "service-account-id-2"
  #     display_name = "Service Account 2"
  #   },
  #   # Add more service accounts as needed
  # }
 }

variable "project_id" {
  type = string
}