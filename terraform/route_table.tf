
# Public RT-1
resource "aws_route_table" "public_1" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.app_name}-rt-public-1"
  }
}

resource "aws_route" "public_1" {
  route_table_id = aws_route_table.public_1.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_1" {
  subnet_id = aws_subnet.public_1.id
  route_table_id = aws_route_table.public_1.id
}


# Public RT-2
resource "aws_route_table" "public_2" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.app_name}-rt-public-2"
  }
}

resource "aws_route" "public_2" {
  route_table_id = aws_route_table.public_2.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id = aws_subnet.public_2.id
  route_table_id = aws_route_table.public_2.id
}


# Private RT-1
resource "aws_route_table" "private_1" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.app_name}-rt-private-1"
  }
}

resource "aws_route" "private_1" {
  route_table_id = aws_route_table.private_1.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.ngw1.id
}

resource "aws_route_table_association" "private_1" {
  subnet_id = aws_subnet.private_1.id
  route_table_id = aws_route_table.private_1.id
}


# Private RT-1
resource "aws_route_table" "private_2" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.app_name}-rt-private-2"
  }
}

resource "aws_route" "private_2" {
  route_table_id = aws_route_table.private_2.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.ngw2.id
}

resource "aws_route_table_association" "private_2" {
  subnet_id = aws_subnet.private_2.id
  route_table_id = aws_route_table.private_2.id
}