provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "example_user" {
  name = var.iam_user_name
  tags = var.tags
}

resource "aws_iam_group" "example_group" {
  name = var.iam_group_name
}

resource "aws_iam_user_group_membership" "example_membership" {
  user = aws_iam_user.example_user.name
  groups = [aws_iam_group.example_group.name]
}

resource "aws_iam_policy" "example_policy" {
  name        = var.iam_policy_name
  description = var.iam_policy_description
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Action    = var.iam_policy_actions
        Resource  = var.iam_policy_resources
      },
    ]
  })
}

resource "aws_iam_group_policy_attachment" "example_attachment" {
  group      = aws_iam_group.example_group.name
  policy_arn = aws_iam_policy.example_policy.arn
}
