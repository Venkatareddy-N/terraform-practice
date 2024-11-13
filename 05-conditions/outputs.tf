output "public_ip_address" {
  value       = aws_instance.terraform_server.public_ip
  description = "The public IP address of the main server instance."
}

output "private_ip_address" {
  value       = aws_instance.terraform_server.private_ip
  description = "The private IP address of the main server instance."
}
