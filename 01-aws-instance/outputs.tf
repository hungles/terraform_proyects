output "instance_id" {
  value       = aws_instance.app_server.id
  description = "The ID of the EC2 instance"
}

output "instance_public_ip" {
  value       = aws_instance.app_server.public_ip
  description = "The public IP address of the EC2 instance"
}