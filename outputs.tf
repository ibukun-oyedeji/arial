output "vpc_name" {
  value = module.vpc.vpc_name
}

output "subnet_name" {
  value = module.subnet.subnet_name
}

output "firewall_name" {
  value = module.firewall.firewall_name
}

output "vm_instance_names" {
  value = [for vm in module.vm : vm.vm_name]  # Collects names of all VMs
  description = "List of names of all VMs"
}

output "vm_public-ips" {
  value = [for vm in module.vm : vm.vm_public-ip]  # Collects public IPs of all VMs
  description = "List of public IP addresses of all VMs"
}


output "service_account_emails" {
  description = "Email addresses of the created service accounts"
  value = module.IAM.service_account_emails
}
output "service_account_ids" {
  description = "Unique IDs of the created service accounts"
  value = module.IAM.service_account_ids
}
