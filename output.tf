output "vpc_id" {
  value = aws_vpc.vpc1.id
}

output "sg1_security_group_id" {
  value = aws_security_group.ec2.id
}
output "sg2_security_group_id" {
  value = aws_security_group.lb.id
}

output "web1-instance_id" {
  value = aws_instance.ec2-one.id
}

output "web2_instance_id" {
  value = aws_instance.ec2-two.id
}

output "web1_public_id" {
  value = aws_instance.ec2-one.public_ip
}
output "web2_public_id" {
  value = aws_instance.ec2-two.public_ip
}


output "public_subnet1_id" {
  value = aws_subnet.public_subnet1.id
}

output "public_subnet2_id" {
  value = aws_subnet.public_subnet2.id
}

output "private_subnet1_id" {
  value = aws_subnet.private_subnet1.id
}

output "private_subnet2_id" {
  value = aws_subnet.private_subnet2.id
}

output "load_balancer_dns_name" {
  value = aws_lb.application-lb.dns_name
}
output "load_balancer_url" {
  value = "http://${aws_lb.application-lb.dns_name}"
}