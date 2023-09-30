output "websnetidA" {
  value = aws_subnet.websnetA.id
}

output "websnetidB" {
  value = aws_subnet.websnetB.id
}

output "websnetcidrA" {
  value = aws_subnet.websnetA.cidr_block
}

output "appsnetidA" {
  value = aws_subnet.appsnetA.id
}

output "appsnetcidrA" {
  value = aws_subnet.appsnetA.cidr_block
}

output "dbsnetidA" {
  value = aws_subnet.dbsnetA.id
}

output "dbsnetcidrA" {
  value = aws_subnet.dbsnetA.cidr_block
}



output "websnetcidrB" {
  value = aws_subnet.websnetB.cidr_block
}

output "appsnetidB" {
  value = aws_subnet.appsnetB.id
}

output "appsnetcidrB" {
  value = aws_subnet.appsnetB.cidr_block
}

output "dbsnetidB" {
  value = aws_subnet.dbsnetB.id
}

output "dbsnetcidrB" {
  value = aws_subnet.dbsnetB.cidr_block
}