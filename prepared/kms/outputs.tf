output "key_id" {
  description = "The ID of the KMS key."
  value       = aws_kms_key.example.id
}

output "key_arn" {
  description = "The ARN of the KMS key."
  value       = aws_kms_key.example.arn
}

output "alias_arn" {
  description = "The ARN of the KMS key alias."
  value       = aws_kms_alias.example.arn
}

