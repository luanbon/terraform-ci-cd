resource "aws_s3_bucket" "bucket" {
  bucket = "${var.namespace}-${var.stage}-${var.name}"

  tags = {
    Name        = var.name
    Namespace   = var.namespace
    Environment = var.stage
    Project     = "Sample"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
