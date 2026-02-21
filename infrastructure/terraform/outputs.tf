output "server_public_ip" {
  value = aws_eip.app_server.public_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/poc_infra ubuntu@${aws_eip.app_server.public_ip}"
}

output "customer_service_url" {
  value = "http://${aws_eip.app_server.public_ip}:5001"
}

output "order_service_url" {
  value = "http://${aws_eip.app_server.public_ip}:5002"
}

output "catalog_service_url" {
  value = "http://${aws_eip.app_server.public_ip}:5003"
}

output "rabbitmq_management_url" {
  value = "http://${aws_eip.app_server.public_ip}:15672"
}