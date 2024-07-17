# network related variable

variable "aws_azs" {
  type        = list(string)
  description = "Availability Zones in Region"
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
  description = "Default Route"
}
