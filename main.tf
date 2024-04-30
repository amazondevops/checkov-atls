provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  #acl    = "public-read" 
  
  tags = {
    Name        = var.bucket_name
    Environment = var.environment
    Scope = "PCI"
    product_v2 = "dev"
    terraform_managed = "true"
    test = "true"
  }
}

resource "aws_s3_bucket" "test" {
  bucket = "test-testint-tesr"
  #acl    = "public-read" 
  
  tags = {
    Name        = "Test"
    Environment = var.environment
    Scope = "PCI"
    #product_v2 = "dev"
    terraform_managed = "true"
    test  = "true"
  }
}

resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Allow inbound traffic on ports 22, 80, and 3389 from anywhere"

  // Inbound rule for SSH (port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Inbound rule for HTTP (port 80)

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    #cidr_blocks = ["123.34.54.24/32"]
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Inbound rule for RDP (port 3389)
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Outbound rule allowing all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
     Name = "Test"
      product_v2 = "dev"
    terraform_managed = "true"
   }
}

resource "aws_s3_bucket" "test" {
  bucket = "test-testint-tesr"
  #acl    = "public-read" 
  
  tags = {
    Name        = "Test"
    Environment = var.environment
    Scope = "PCI"
    product_v2 = "dev"
    terraform_managed = "true"
    test  = "true"
  }
}

resource "aws_security_group" "examplesg" {
  name        = "example-security-group"
  description = "Allow inbound traffic on ports 22, 80, and 3389 from anywhere"

  // Inbound rule for SSH (port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Inbound rule for HTTP (port 80)

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["123.34.54.24/32"]
    #cidr_blocks = ["0.0.0.0/0"]
  }

  // Inbound rule for RDP (port 3389)
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Outbound rule allowing all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
     Name = "Test"
    product_v2 = "dev"
    #terraform_managed = "true"
   }
}