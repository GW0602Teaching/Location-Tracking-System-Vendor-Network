resource "aws_eip" "eip_1" {
  depends_on = [ aws_internet_gateway.igw ]
}

resource "aws_eip" "eip_2" {
  depends_on = [ aws_internet_gateway.igw ]
}