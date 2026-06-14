variable "name" {
  type        = string
  description = "VPC name as represented in AWS"
}

variable "cidr" {
  type        = string
  description = "CIDR for VPC"
}

variable "azs" {
  type        = list(string)
  description = "These are the availability zones for this VPC"
}

variable "private_subnets" {
  type        = list(string)
  description = "the private subnets in the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "the public subnets in the VPC"
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Whether to enable NAT gateway for this VPC"
}

variable "enable_vpn_gateway" {
  type        = bool
  description = "Whether to enable VPN gateway for this VPC"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the VPC"
}