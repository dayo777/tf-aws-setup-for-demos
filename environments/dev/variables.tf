variable "region" {
  type        = string
  description = "AWS region where resources are deployed."
}

variable "environment" {
  type        = string
  description = "Deployment stage, e.g. dev, prod."
}

variable "project_name" {
  type        = string
  description = "Project name used for tagging."
}

variable "vpc_name" {
  type        = string
  description = "Name for the VPC."
}

variable "cidr" {
  type        = string
  description = "CIDR block for the VPC."
}

variable "enable_ipv6" {
  type        = bool
  description = "Whether to enable IPv6 for the VPC."
}

variable "azs" {
  type        = list(string)
  description = "Availability zones for the VPC."
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDR blocks."
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnet CIDR blocks."
}

variable "database_subnets" {
  type        = list(string)
  description = "Database subnet CIDR blocks."
}
