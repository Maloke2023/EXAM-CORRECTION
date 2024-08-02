aws_region      = "us-west-2"
iam_user_name   = "example-user"
iam_group_name  = "example-group"
iam_policy_name = "example-policy"
iam_policy_description = "Example IAM policy"
iam_policy_actions = [
  "s3:ListBucket",
  "s3:GetObject",
  "s3:PutObject"
]
iam_policy_resources = [
  "arn:aws:s3:::example-bucket",
  "arn:aws:s3:::example-bucket/*"
]
tags = {
  Environment = "Production"
  Project     = "IAM Management"
  ManagedBy   = "Terraform"
}
