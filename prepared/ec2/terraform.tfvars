# terraform.tfvars

region         = "us-west-2"
instance_count = 2
ami_id         = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI, replace with appropriate AMI for your region
instance_type  = "t2.micro"
key_name       = "my-key-pair"  # Replace with your key pair name
subnet_id      = "subnet-0123456789abcdef0"  # Replace with your subnet ID
vpc_id         = "vpc-0123456789abcdef0"  # Replace with your VPC ID
ssh_cidr_block = "YOUR_IP_ADDRESS/32"  # Replace with your IP address
instance_name  = "app-server"
iam_role_name  = "ec2-s3-read-role"

tags = {
  Environment = "Development"
  Project     = "MyProject"
}
