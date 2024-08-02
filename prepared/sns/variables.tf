
# variables.tf

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "topic_name" {
  description = "The name of the SNS topic"
  type        = string
}

variable "email_subscriptions" {
  description = "List of email addresses to subscribe to the SNS topic"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to the SNS topic"
  type        = map(string)
  default     = {}
}
