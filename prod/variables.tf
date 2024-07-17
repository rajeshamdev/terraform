# all variable blocks in alphabetical order

variable "aws_region" {
  type        = string
  description = "AWS Region"
}

variable "aws_ec2_ami_id" {
  type        = string
  description = "Amazon Machine Image for EC2 instances "
}

variable "aws_ec2_type" {
  type        = string
  description = "EC2 family type"
}

variable "aws_azs" {
  type        = list(string)
  description = "Availability zones in Ohio Region"
}

variable "aws_vpc_cidr" {
  type        = string
  description = "AWS VPC CIDR"
}


variable "aws_public_subnet_cidr" {
  type        = list(string)
  description = "AWS public subnet CIDR"
}

variable "aws_private_subnet_cidr" {
  type        = list(string)
  description = "AWS private subnet CIDR"
}

variable "aws_default_route" {
  type        = string
  description = "Default route"
}
