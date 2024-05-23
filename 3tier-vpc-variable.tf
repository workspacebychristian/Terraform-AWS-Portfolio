# CREATE VPC TERRAFORM
 module "my-vpc" {
   source = "terraform-aws-modules/vpc/aws"
   
# VPC DETAILS
  name            = var.vpc_name
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets 

  # DATABASE SUBNETS
  database_subnets = var.vpc_database_subnets
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  # create_database_nat_gateway_route = true
  
  # ENABLE NATGATEWAY FOR PRIVATE SUBNET
  enable_nat_gateway = var.vpc_enable_nat_gateway 
  single_nat_gateway = var.vpc_single_nat_gateway

  # VPC DNS
  enable_dns_hostnames = true
  enable_dns_support   = true

  # SUBNETS TAGS

private_subnet_tags = {
    Type = "private subnet"
  } 

  public_subnet_tags = {
    Type = "public subnet"
  }
   
  database_subnet_tags = {
    Type = "database subnet"
  }
}
