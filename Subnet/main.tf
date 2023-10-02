resource "aws_subnet" "websnetA" {
  vpc_id     = var.vpcid
  cidr_block = var.webcidr
  availability_zone = "ap-south-1a"
  tags = {
    Name = "ThreeTierWebSnetA"
  }
}

resource "aws_subnet" "websnetB" {
  vpc_id     = var.vpcid
  cidr_block = "30.0.2.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "ThreeTierWebSnetB"
  }
}

resource "aws_subnet" "appsnetA" {
  vpc_id     = var.vpcid
  cidr_block = var.appcidr
  availability_zone = "ap-south-1a"
  tags = {
    Name = "ThreeTierAppSnetA"
  }
}


resource "aws_subnet" "appsnetB" {
  vpc_id     = var.vpcid
  cidr_block = "30.0.4.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "ThreeTierAppSnetB"
  }
}


resource "aws_subnet" "dbsnetA" {
  vpc_id     = var.vpcid
  cidr_block = var.dbcidr
  availability_zone = "ap-south-1a"
  tags = {
    Name = "ThreeTierDBSnetA"
  }
}

resource "aws_subnet" "dbsnetB" {
  vpc_id     = var.vpcid
  cidr_block = "30.0.6.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "ThreeTierDBSnetB"
  }
}