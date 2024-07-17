#
#
# create two public subneits
resource "aws_subnet" "public_subnet" {

  count             = length(var.aws_public_subnet_cidr)
  vpc_id            = aws_vpc.ohio_vpc.id
  cidr_block        = element(var.aws_public_subnet_cidr, count.index)
  availability_zone = element(var.aws_azs, count.index)

  tags = {
    Name = "Raj-Ohio-Public-Subnet-${count.index + 1}"
  }
}


# create two private subnets
resource "aws_subnet" "private_subnet" {

  count             = length(var.aws_private_subnet_cidr)
  vpc_id            = aws_vpc.ohio_vpc.id
  cidr_block        = element(var.aws_private_subnet_cidr, count.index)
  availability_zone = element(var.aws_azs, count.index)

  tags = {
    Name = "Raj-Ohio-Private-Subnet-${count.index + 1}"
  }
}
