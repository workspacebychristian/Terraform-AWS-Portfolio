# CREATE VPC TERRAFORM
 module "vpc" {
   source = "terraform-aws-modules/vpc/aws"
   
# VPC DETAILS
  name = "my-vpc"
  cidr = "40.0.0.0/16"
  azs             = ["us-east-2a", "us-east-2b"]
  private_subnets = ["40.0.1.0/24", "40.0.2.0/24"]
  public_subnets  = ["40.0.101.0/24", "40.0.102.0/24"]

# DATABASE SUBNETS
  create_database_subnet_group = true
  create_database_subnet_route_table = true
  database_subnets = ["40.0.7.0/24", "40.0.8.0/24"]
#   create_database_nat_gateway_route = true
  
# ENABLE NATGATEWAY FOR PRIVATE SUBNET
  enable_nat_gateway = true
  single_nat_gateway = true

# VPC DNS 
  enable_dns_hostnames =  true
  enable_dns_support = true

# SUBNETS TAGS
 private_subnet_tags = {
    name = "private subnet"
  }

  public_subnet_tags = {
    name = "public subnet"
  }

  database_subnet_tags = {
    name = "database subnet"
}

tags = {
    owner = "christian"
    Environment = "dev"
}

vpc_tags = {
    name = "my-vpc"
 }
}
