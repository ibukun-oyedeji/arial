output "vpc_name" {
  value = module.vpc.vpc_name
}

output "subnet_name" {
  value = module.subnet.subnet_name
}

output "firewall_name" {
  value = module.firewall.firewall_name
}

output "vm_instance_name" {
  value = module.vm.vm_name
}


output "vm_public-ip" {
  value = module.vm.vm_public-ip
}