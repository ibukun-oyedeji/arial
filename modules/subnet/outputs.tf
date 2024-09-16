variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR range of the subnet"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC this subnet will belong to"
  type        = string
}

variable "region" {
  description = "The region for the subnet"
  type        = string
}
