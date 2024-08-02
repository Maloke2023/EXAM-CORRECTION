# outputs.tf

output "instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = aws_instance.app_server[*].id
}

output "instance_public_ips" {
  description = "Public IPs of the created EC2 instances"
  value       = aws_instance.app_server[*].public_ip
}

output "security_group_id" {
  description = "ID of the created security group"
  value       = aws_security_group.allow_ssh.id
}

output "iam_role_arn" {
  description = "ARN of the created IAM role"
  value       = aws_iam_role.ec2_role.arn
}
