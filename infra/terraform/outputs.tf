output "public_ip" {
  value = aws_instance.devops_server.public_ip
}

output "public_dns" {
  value = aws_instance.devops_server.public_dns
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/${var.key_name}.pem ubuntu@${aws_instance.devops_server.public_ip}"
}

output "elastic_ip" {
  value = aws_eip.devops_eip.public_ip
}