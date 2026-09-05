output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.idreaminstance.id
}

output "public_ip" {
  description = "EC2 public IP"
  value       = aws_instance.idreaminstance.public_ip
}