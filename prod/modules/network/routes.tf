#
#
# create route table and attach to internet gateway
resource "aws_route_table" "rt" {

  vpc_id = aws_vpc.ohio_vpc.id

  route {
    cidr_block = var.aws_default_route
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Raj-Ohio-Default-Route"
  }
}


# create route table associations
resource "aws_route_table_association" "rt_association" {

  count          = length(var.aws_public_subnet_cidr)
  subnet_id      = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_route_table.rt.id
}
