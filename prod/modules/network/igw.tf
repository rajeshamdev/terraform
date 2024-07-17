#
#
# create internet gateway
resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.ohio_vpc.id

  tags = {
    Name = "Raj-Ohio-VPC-igw"
  }
}
