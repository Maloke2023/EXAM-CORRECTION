output "role_arn" {
  description = "The ARN of the IAM role."
  value       = aws_iam_role.example.arn
}

output "policy_arn" {
  description = "The ARN of the IAM policy."
  value       = aws_iam_policy.example.arn
}

