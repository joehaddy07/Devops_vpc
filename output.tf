output "vpc_id" {
  value = aws_vpc.joe07_vpc.id
}

output "pub_subnet1" {
  value = aws_subnet.public_subnet_1.id
}
output "pub_subnet2" {
  value = aws_subnet.public_subnet_2.id
}
