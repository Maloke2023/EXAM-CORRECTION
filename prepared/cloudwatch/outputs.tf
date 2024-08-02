

output "log_group_name" {
  description = "Name of the CloudWatch Log Group"
  value       = aws_cloudwatch_log_group.example.name
}

output "log_group_arn" {
  description = "ARN of the CloudWatch Log Group"
  value       = aws_cloudwatch_log_group.example.arn
}

output "metric_alarm_id" {
  description = "ID of the CloudWatch Metric Alarm"
  value       = aws_cloudwatch_metric_alarm.example.id
}

output "metric_alarm_arn" {
  description = "ARN of the CloudWatch Metric Alarm"
  value       = aws_cloudwatch_metric_alarm.example.arn
}
