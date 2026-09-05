resource "aws_s3_bucket" "idreams3" {
  bucket = var.bucket_name

  tags = {
    Name        = "terraform-s3"
    Environment = "dev-idream"
  }
}