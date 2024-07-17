
module "network" {

  source = "./modules/network"

  aws_azs                 = var.aws_azs
  aws_vpc_cidr            = var.aws_vpc_cidr
  aws_public_subnet_cidr  = var.aws_public_subnet_cidr
  aws_private_subnet_cidr = var.aws_private_subnet_cidr
  aws_default_route       = var.aws_default_route
}

module "compute" {

  source = "./modules/compute"

  aws_public_subnets    = module.network.public_subnets
  aws_security_group_id = module.network.security_group_id
  aws_azs               = var.aws_azs
  aws_ec2_ami_id        = var.aws_ec2_ami_id
  aws_ec2_type          = var.aws_ec2_type
}
