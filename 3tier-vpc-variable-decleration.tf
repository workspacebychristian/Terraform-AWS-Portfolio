# VPC Input Variables

# VPC DETAILS
variable "vpc_name" {
  description = "VPC Name"
  type = string 
  default = "my-vpc"
}

# VPC CIDR BLOCK
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string 
  default = "40.0.0.0/16"
}

# VPC AVAILABILITY ZONE
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type = list(string)
  default = ["us-east-2a", "us-east-2b"]
}

# VPC PRIVATE SUBNET
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["40.0.1.0/24", "40.0.2.0/24"]
}

# VPC PUBLIC SUBNET
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["40.0.101.0/24", "40.0.102.0/24"]
}

# VPC DATABASE SUBNET
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(string)
  default = ["40.0.7.0/24", "40.0.8.0/24"]
}

# VPC CREATE DATABASE SUBNET GROUP (True or False)
variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type = bool
  default = true 
}

# VPC CREATE DATABASE SUBNET ROUTE TABLE (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type = bool
  default = true   
}

  
# VPC ENABLE NATGATEWAY (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets"
  type = bool
  default = true  
}

# VPC SINGLE NATGATEWAY (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable Only Single NAT Gateway In One Availability Zone"
  type = bool
  default = true
}
