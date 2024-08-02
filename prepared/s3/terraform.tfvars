# terraform.tfvars

region             = "us-west-2"
bucket_name        = "my-unique-bucket-name-12345" # Make sure this is globally unique
versioning_enabled = true

tags = {
  Environment = "Development"
  Project     = "MyProject"
}
