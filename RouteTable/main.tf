resource "aws_route_table" "example" {
  vpc_id = var.vpcid

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gatewayid
  }

  tags = {
    Name = "PublicRouteTable"
  }
}
resource "aws_route_table_association" "a" {
  subnet_id      = var.subnetid
  route_table_id = aws_route_table.example.id
}