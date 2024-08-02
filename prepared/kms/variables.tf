variable "aws_region" {
  description = "The AWS region to deploy resources into."
  type        = string
  default     = "us-west-2"
}

variable "key_alias" {
  description = "The alias for the KMS key."
  type        = string
}

variable "key_description" {
  description = "The description of the KMS key."
  type        = string
  default     = "My KMS key"
}

variable "key_policy" {
  description = "The JSON key policy document."
  type        = string
}

