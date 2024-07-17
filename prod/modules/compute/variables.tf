
variable "aws_ec2_ami_id" {
  type        = string
  description = "Amazon Machine Image for EC2 instances "
}

variable "aws_ec2_type" {
  type        = string
  description = "EC2 family type"
}


variable "aws_public_subnets" {
  type        = list(string)
  description = "Public subnets"
}

variable "aws_azs" {
  type        = list(string)
  description = "AWS Availability zones"
}

variable "aws_security_group_id" {
  type        = string
  description = "Security group"
}
