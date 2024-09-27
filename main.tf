provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  network_cidr = var.network_cidr
}

module "subnet" {
  depends_on  = [module.vpc]
  source      = "./modules/subnet"
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
  region      = var.region
}

module "firewall" {
  depends_on    = [module.subnet]
  source        = "./modules/firewall"
  vpc_name      = var.vpc_name
  firewall_name = var.firewall_name
}

module "vm" {
  for_each    = { for vm in var.vm_instances : vm.name => vm }
  depends_on  = [module.subnet]
  source      = "./modules/vm"
  vm_name     = each.key
  subnet_name = var.subnet_name
  machine_type = each.value.machine_type
  user        = var.user
  publickey   = var.public_key
}

module "private_key" {
  source   = "./modules/private_key"
  filename = var.private_key
  file     = var.public_key
}

module "IAM" {
  source   = "./modules/IAM/service-accounts"
  service_accounts = var.service_accounts
  project_id = var.project_id
}


# resource "null_resource" "update-vm" {
#   provisioner "remote-exec" {
#     connection {
#       type        = "ssh"
#       user        = var.user
#       host        = module.vm.vm_public-ip
#       private_key = file(var.private_key)
#     }
#     inline = [
#       "sudo apt-get update",
#     ]
#   }
# }

resource "null_resource" "update-vm" {
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = var.user
      host        = module.vm["master"].vm_public-ip  # Adjust this line
      private_key = file(var.private_key)
    }
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y ansible",  # Install Ansible
    ]
  }
  provisioner "local-exec" {
    command = "scp -i ${var.private_key} -o StrictHostKeyChecking=no ${var.private_key} ${var.user}@${module.vm["master"].vm_public-ip}:~"
  }

}

