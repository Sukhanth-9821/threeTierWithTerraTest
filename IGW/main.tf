resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpcid
  tags = {
      Name = var.Igw_name
  }
}