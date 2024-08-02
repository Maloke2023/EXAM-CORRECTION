aws_region     = "us-west-2"
key_alias       = "alias/my-example-key"
key_description = "My KMS key for example purposes"
key_policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Effect    = "Allow"
      Principal = {
        AWS = "*"
      }
      Action    = "kms:*"
      Resource  = "*"
    }
  ]
})

