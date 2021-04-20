# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR block
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

# Subnet
output "subnet_id" {
  description = "The ID of the Subnet"
  value       = module.vpc.subnet_id
}

# Subnet CIDR block
output "subnet_cidr_block" {
  description = "The CIDR block of the Subnet"
  value       = module.vpc.subnet_cidr_block
}
