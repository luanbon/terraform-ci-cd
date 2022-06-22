output "bucket_domain_name" {
  value       = aws_s3_bucket.bucket.bucket_domain_name
  description = "Terraform Sample Bucket"
}
