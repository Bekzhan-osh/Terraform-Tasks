resource "aws_s3_bucket" "Bucket" {
  bucket = "beks3bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  versioning {
    enabled = true
  }
}
