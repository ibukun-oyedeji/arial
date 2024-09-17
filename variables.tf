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

variable "vm_name" {
  description = "Name of VM"
  type        = string
}

variable "machine_type" {
  description = "Machine Type"
  type        = string
  default     = "e2-micro"
}

variable "private_key" {
  type    = string
  default = "./private_key"
}

variable "public_key" {
  type    = string
  default = "./public_key"
}

variable "user" {
  description = "Private Key"
  type        = string
  default     = "oyedeji.ib@gmail.com"
}
