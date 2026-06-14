dev_region_us_east_1 = "us-east-1"
environment          = "dev"
project_name         = "aws-demos"

# definitions for networking module
dev_vpc_name_us_east_1 = "demo_network_dev"
dev_cidr_us_east_1     = "192.168.0.0/16"
dev_azs_us_east_1      = ["us-east-1e", "us-east-1f"]

dev_public_subnets_us_east_1  = ["192.168.1.0/24", "192.168.2.0/24"]
dev_private_subnets_us_east_1 = ["192.168.10.0/24", "192.168.11.0/24"]

dev_enable_nat_gateway_us_east_1 = false
dev_enable_vpn_gateway_us_east_1 = false

tags = {
  Environment = "dev"
  Project     = "aws-demos"
  Terraform   = true
}