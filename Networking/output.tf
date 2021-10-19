output "vpc_id" {
    value = aws_vpc.my_vpc.id
}
output "Public_subnet" {
    value = aws_subnet.Public_sg.id
}
output "Private_subnet" {
    value = aws_subnet.Private_sg.id
}

output "Public_sec" {
    value = aws_security_group.Public.id
}

output "Private_sec" {
    value = aws_security_group.Private.id
}
