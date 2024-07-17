#
#
# create security group
resource "aws_security_group" "app_security_group" {
  name        = "Web Security Group"
  description = "Allow http and ssh access"
  vpc_id      = aws_vpc.ohio_vpc.id

  tags = {
    Name = "Web-Security-Group"
  }
}

# add the rule that accepts any http traffic
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.app_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}


# add the rule that accepts ssh connections
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.app_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

# NOTE: inbound connections to security group are stateful
# (so there is no need of rule for these outbound connections).
# But, connections initiated by resources in security group requires
# outbound rule in case they want to communicate outside
# (for example git clone or wget etc).

resource "aws_vpc_security_group_egress_rule" "allow_http" {
  security_group_id = aws_security_group.app_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "allow_https" {
  security_group_id = aws_security_group.app_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  to_port           = 443
  ip_protocol       = "tcp"
}
