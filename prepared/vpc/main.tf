resource "aws_vpc" "prod_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = merge(
    {
      Name = var.vpc_name
    },
    var.tags

  )
}

resource " aws_internet_gateway" "aws_igw" {

  vpc_id = aws_vpc.igw.id

  tags = merge(
    {
      Name = "${var.vpc_name}-igw"
    },
    var.tags
  )
}

resource "aws_subnet" "public-subnet" {
  count                   = "var.public_subnet_cidr"
  vpc_id                  = aws_vpc.prod_vpc.id
  cidr_block              = "var.public_subnet_cidrs"
  availability_zone       = "var.availability_zone"
  map_public_ip_on_launch = true

  tags = merge(
    {
      Name = "${var.vpc_name}-public-subnet-${count.index + 1}"
    },
    var.tags
  )
}

resource "aws_subnet" "private-subnet" {
  count             = length(var.private_subnet_cidrs)
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = merge(
    {
      Name = "${var.vpc_name}-private-subnet-${count.index + 1}"
    },
    var.tags
  )
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.prod-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prod-vpc.id
  }

  tags = merge(
    {
      Name = "${var.vpc_name}-public-rt"
    },
    var.tags
  )
}

resource "aws_route_table_association" "public" {
  count          = length(aws_subnet.public)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.prod-vpc.id

  tags = merge(
    {
      Name = "${var.vpc_name}-private-rt"
    },
    var.tags
  )
}

resource "aws_route_table_association" "private" {
  count          = length(aws_subnet.private)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}

# main.tf
# (Add this after the existing VPC resources)

resource "aws_security_group" "aws-sg" {
  name        = "${var.vpc_name}-sg"
  description = "Security group for ${var.vpc_name}"
  vpc_id      = aws_vpc.prod-vpc.id

  # Ingress rules
  ingress {
    description = "Allow HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTPS from anywhere"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH from specific IP"
    from_port   = 22
    to_port     = 22
    protocol    = "var.ssh_allowed_cidr"
  }

  # For RDS PostgreSQL
  ingress {
    description = "Allow PostgreSQL from within VPC"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  # Egress rules
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    {
      Name = "${var.vpc_name}-sg"
    },
    var.tags
  )
}


