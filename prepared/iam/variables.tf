variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "iam_user_name" {
  description = "The name of the IAM user"
  type        = string
}

variable "iam_group_name" {
  description = "The name of the IAM group"
  type        = string
}

variable "iam_policy_name" {
  description = "The name of the IAM policy"
  type        = string
}

variable "iam_policy_description" {
  description = "The description of the IAM policy"
  type        = string
}

variable "iam_policy_actions" {
  description = "List of actions for the IAM policy"
  type        = list(string)
}

variable "iam_policy_resources" {
  description = "List of resources for the IAM policy"
  type        = list(string)
}

variable "tags" {
  description = "A mapping of tags to assign to the resources"
  type        = map(string)
}
