output "vpcid"{
   value = aws_vpc.threetiervpc.id
}

output "vpccidroutput"{
   value = aws_vpc.threetiervpc.cidr_block
}
