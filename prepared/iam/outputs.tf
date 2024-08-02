output "iam_user_arn" {
  description = "The ARN assigned by AWS for the user"
  value       = aws_iam_user.example_user.arn
}

output "iam_user_name" {
  description = "The user's name"
  value       = aws_iam_user.example_user.name
}

output "iam_group_arn" {
  description = "The ARN assigned by AWS for the group"
  value       = aws_iam_group.example_group.arn
}

output "iam_group_name" {
  description = "The group's name"
  value       = aws_iam_group.example_group.name
}

output "iam_policy_arn" {
  description = "The ARN assigned by AWS to the policy"
  value       = aws_iam_policy.example_policy.arn
}

output "iam_policy_name" {
  description = "The name of the policy"
  value       = aws_iam_policy.example_policy.name
}
