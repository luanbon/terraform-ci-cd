resource "aws_s3_bucket" "bucket" {
  bucket = "${var.namespace}-${var.stage}-${var.name}"

  tags = {
    Name        = var.name
    Environment = var.stage
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
