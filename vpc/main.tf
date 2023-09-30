resource "aws_vpc" "threetiervpc" {
  cidr_block = var.vpccidr
  tags = {
      Name = var.vpcname
  }
}