resource "aws_kms_key" "iam-key" {
  description = var.key_description
  policy      = var.key_policy
}

resource "aws_kms_alias" "iam-key" {
  name          = var.key_alias
  target_key_id  = aws_kms_key.example.id
}

