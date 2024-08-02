variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "log_group_name" {
  description = "Name of the CloudWatch Log Group"
  type        = string
}

variable "log_retention_days" {
  description = "Number of days to retain log events"
  type        = number
}

variable "alarm_name" {
  description = "Name of the CloudWatch Alarm"
  type        = string
}

variable "evaluation_periods" {
  description = "Number of periods to evaluate for the alarm"
  type        = number
}

variable "metric_name" {
  description = "Name of the metric to monitor"
  type        = string
}

variable "namespace" {
  description = "Namespace for the metric"
  type        = string
}

variable "period" {
  description = "Period in seconds over which the specified statistic is applied"
  type        = number
}

variable "threshold" {
  description = "Threshold for the metric"
  type        = number
}

variable "alarm_description" {
  description = "Description of the alarm"
  type        = string
}

variable "actions_enabled" {
  description = "Indicates whether actions should be executed during any changes to the alarm state"
  type        = bool
}

variable "alarm_actions" {
  description = "List of ARNs to execute when this alarm transitions to the ALARM state"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
