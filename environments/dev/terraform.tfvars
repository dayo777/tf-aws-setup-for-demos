region       = "us-east-1"
environment  = "dev"
project_name = "aws-demos"

vpc_name    = "demo_network_dev"
enable_ipv6 = false
cidr        = "192.168.0.0/16"
azs         = ["us-east-1e", "us-east-1f"]

public_subnets   = ["192.168.1.0/24", "192.168.2.0/24"]
private_subnets  = ["192.168.10.0/24", "192.168.11.0/24"]
database_subnets = ["192.168.20.0/24", "192.168.21.0/24"]
