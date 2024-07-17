#
#
# create VPC
resource "aws_vpc" "ohio_vpc" {

  cidr_block = var.aws_vpc_cidr

  tags = {
    Name = "Raj-Ohio-VPC"
  }
}
