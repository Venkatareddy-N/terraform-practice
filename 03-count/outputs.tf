#to see aws instance info
output "aws_instance_info" {
  value       = aws_instance.terraform_server
  description = "it will give aws instance output"
}

#This ec2.tf is creating 2 servers to it is a list need to provide index value to get output
output "public_ip_address" {
  value       = aws_instance.terraform_server[0].public_ip
  description = "The public IP address of the main server instance."
}

output "public_ip_address" {
  value       = aws_instance.terraform_server[1].public_ip
  description = "The public IP address of the main server instance."
}