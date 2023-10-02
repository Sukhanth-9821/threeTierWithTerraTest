resource "aws_route_table" "publicroute" {
  vpc_id = var.vpcid

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gatewayid
  }

  tags = {
    Name = "PublicRouteTable"
  }
}
resource "aws_route_table_association" "routeableAssociationWeb1" {
  subnet_id      = var.subnetidW1
  route_table_id = aws_route_table.publicroute.id
}
resource "aws_route_table_association" "routeableAssociationweb2" {
  subnet_id      = var.subnetidW2
  route_table_id = aws_route_table.publicroute.id
}
