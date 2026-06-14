# follow naming convention
variable "dev_region_us_east_1" {
  type        = string
  description = "AWS region where resources are deployed."
}

variable "environment" {
  type        = string
  description = "Deployment stage, e.g. dev, prod."
}

variable "dev_vpc_name_us_east_1" {
  type        = string
  description = "Name for the VPC."
}

variable "dev_cidr_us_east_1" {
  type        = string
  description = "CIDR block for the VPC."
}

variable "dev_azs_us_east_1" {
  type        = list(string)
  description = "Availability zones for the VPC."
}

variable "dev_public_subnets_us_east_1" {
  type        = list(string)
  description = "Public subnet CIDR blocks."
}

variable "dev_private_subnets_us_east_1" {
  type        = list(string)
  description = "Private subnet CIDR blocks."
}

variable "dev_enable_nat_gateway_us_east_1" {
  type        = bool
  description = "Whether to enable NAT gateway for this VPC"
}

variable "dev_enable_vpn_gateway_us_east_1" {
  type        = bool
  description = "Whether to enable VPN gateway for this VPC"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the VPC"
}

variable "project_name" {
  type        = string
  description = "the name of the project for tag reference"
}