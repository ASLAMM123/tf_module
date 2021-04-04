output "ec2_instance_id" {
  value       = aws_instance.web.id
  description = "The AWS ID of the EC2 instance we created"
}
