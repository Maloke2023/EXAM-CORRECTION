aws_region           = "us-east-2"
db_identifier        = "postgres-db"
engine_version       = "16"
instance_class       = "db.t3.micro"
allocated_storage    = 20
storage_type         = "gp2"
storage_encrypted    = true

db_name              = "postgres"
username             = "dbadmin"
password             = "ChangeMe123!"  # Use AWS Secrets Manager in production

vpc_security_group_ids = ["sg-12345678"]  # Replace with your security group ID
subnet_ids             = ["subnet-12345678", "subnet-87654321"]  # Replace with your subnet IDs

parameter_group_name = "default.postgres14"

backup_retention_period = 7
backup_window           = "03:00-04:00"
maintenance_window      = "sun:04:00-sun:05:00"

multi_az            = false
publicly_accessible = false

skip_final_snapshot = false

tags = {
  Environment = "Production"
  Project     = "MyProject"
  ManagedBy   = "Terraform"
}
