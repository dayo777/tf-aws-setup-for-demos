module "dev_networking_us_east_1" {
  source = "../../modules/networking"

  name            = var.dev_vpc_name_us_east_1
  cidr            = var.dev_cidr_us_east_1
  azs             = var.dev_azs_us_east_1
  public_subnets  = var.dev_public_subnets_us_east_1
  private_subnets = var.dev_private_subnets_us_east_1

  enable_nat_gateway = var.dev_enable_nat_gateway_us_east_1
  enable_vpn_gateway = var.dev_enable_vpn_gateway_us_east_1
  tags               = var.tags
}
