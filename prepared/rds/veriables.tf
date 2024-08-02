# variables.tf

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "db_identifier" {
  description = "The name of the RDS instance"
  type        = string
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
}

variable "storage_type" {
  description = "One of 'standard' (magnetic), 'gp2' (general purpose SSD), or 'io1' (provisioned IOPS SSD)"
  type        = string
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  type        = bool
}

variable "db_name" {
  description = "The name of the database to create when the DB instance is created"
  type        = string
}

variable "username" {
  description = "Username for the master DB user"
  type        = string
}

variable "password" {
  description = "Password for the master DB user"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate"
  type        = list(string)
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = list(string)
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate"
  type        = string
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  type        = number
}

variable "backup_window" {
  description = "The daily time range during which automated backups are created"
  type        = string
}

variable "maintenance_window" {
  description = "The window to perform maintenance in"
  type        = string
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  type        = bool
}

variable "publicly_accessible" {
  description = "Bool to control if instance is publicly accessible"
  type        = bool
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted"
  type        = bool
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}
