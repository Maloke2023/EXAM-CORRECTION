output "sns_topic_arn" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.my_topic.arn
}

output "sns_topic_name" {
  description = "The name of the SNS topic"
  value       = aws_sns_topic.my_topic.name
}

output "subscriptions" {
  description = "List of subscriptions to the SNS topic"
  value       = aws_sns_topic_subscription.email_subscription[*].id
}
