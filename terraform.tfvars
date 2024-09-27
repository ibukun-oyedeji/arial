firewall_name = "heat"
# vm_name       = "heater"
vpc_name      = "heated"
subnet_name   = "popo"

service_accounts = {
    "service_account_1" = {
      account_id   = "service-account-id-1"
      display_name = "Service Account 1"
      roles        = ["roles/compute.instanceAdmin.v1"]
    },
    "service_account_2" = {
      account_id   = "service-account-id-2"
      display_name = "Service Account 2"
      roles        = ["roles/storage.admin", "roles/iam.serviceAccountUser"]
    },
    # Add more service accounts as needed
    "service_account_3" = {
      account_id   = "service-account-id-3"
      display_name = "Service Account 3"
      roles        = ["roles/storage.admin", "roles/iam.serviceAccountUser"]
    },

  }

   vm_instances = [
    { name = "master", machine_type = "e2-micro" },
    { name = "slave1", machine_type = "e2-micro" },
    { name = "slave2", machine_type = "e2-micro" },
  ]
