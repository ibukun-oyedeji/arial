variable "project_id" {
  description = "Project ID"
  type        = string
  default     = "molten-hall-435812-c3"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "vpc_name" {
  type = string
}

variable "network_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "subnet_name" {
  type    = string
  default = "popo"
}

variable "firewall_name" {
  type = string
}

# variable "vm_name" {
#   description = "Name of VM"
#   type        = string
# }

# variable "machine_type" {
#   description = "Machine Type"
#   type        = string
#   default     = "e2-micro"
# }

variable "private_key" {
  type    = string
  default = "./private_key"
}

variable "public_key" {
  type    = string
  default = "./public_key"
}

variable "user" {
  description = "User"
  type        = string
  default     = "oyedeji.ib@gmail.com"
}

variable "service_accounts" {
  description = "List of service accounts with account_id and display_name"
  type = map(object({
    account_id   = string
    display_name = string
    roles        = list(string)
  }))

}

variable "vm_instances" {
  description = "List of VM configurations"
  type = list(object({
    name        = string
    machine_type = string
  }))
}
