module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.6.1"

  name        = var.name
  cidr        = var.cidr
  enable_ipv6 = var.enable_ipv6

  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  # database_subnets = var.database_subnets

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway

  tags = var.tags
}