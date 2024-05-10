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
