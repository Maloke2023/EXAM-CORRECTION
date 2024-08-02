# variables.tf

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
}

variable "key_name" {
  description = "The key pair name to use for the instances"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to launch the instances in"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to create the security group in"
  type        = string
}

variable "ssh_cidr_block" {
  description = "The CIDR block to allow SSH access from"
  type        = string
}

variable "instance_name" {
  description = "The name prefix for the EC2 instances"
  type        = string
}

variable "iam_role_name" {
  description = "The name of the IAM role to create"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
