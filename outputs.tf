output "vpc_id" {
  value = aws_vpc.main.id
}

output "ec2_security_group_id" {
  value = aws_security_group.ec2_sg.id
}

output "rds_security_group_id" {
  value = aws_security_group.rds_sg.id
}

output "rds_endpoint" {
  value = aws_db_instance.sqlserver.address
}

output "rds_port" {
  value = aws_db_instance.sqlserver.port
}
output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.web.public_dns
}
output "alb_dns_name" {
  value = aws_lb.app.dns_name
}