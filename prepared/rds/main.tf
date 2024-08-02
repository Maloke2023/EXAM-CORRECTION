resource "aws_db_instance" "postgres_db" {
  identifier           = var.db_identifier
  engine               = "postgres"
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  storage_encrypted    = var.storage_encrypted
  
  db_name              = var.db_name
  username             = var.username
  password             = var.password
  
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.default.name
  
  parameter_group_name = var.parameter_group_name
  
  backup_retention_period = var.backup_retention_period
  backup_window           = var.backup_window
  maintenance_window      = var.maintenance_window
  
  multi_az            = var.multi_az
  publicly_accessible = var.publicly_accessible
  
  skip_final_snapshot = var.skip_final_snapshot
  
  tags = var.tags
}

resource "aws_db_subnet_group" "default" {
  name       = "${var.db_identifier}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = var.tags
}
