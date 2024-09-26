variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "machine_type" {
  description = "The machine type of the virtual machine"
  type        = string
  default     = "e2-micro"
}

variable "subnet_name" {
  description = "The subnet name the VM will connect to"
  type        = string
}

variable "zone" {
  description = "The GCP zone where the VM will be deployed"
  type        = string
  default     = "us-central1-a"
}

variable "publickey" {
  description = "The Public Key"
  type        = string
}

variable "user" {
  description = "Name of the User"
  type        = string
  default     = "oyedeji.ib@gmail.com"
}
