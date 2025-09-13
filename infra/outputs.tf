output "s3_bucket_name" {
  description = "The name of the S3 bucket for storing pipeline artifacts"
  value       = aws_s3_bucket.pipeline-bucket.bucket
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.pipeline-bucket.arn
}

output "s3_bucket_url" {
  description = "The regional URL of the S3 bucket"
  value       = aws_s3_bucket.pipeline-bucket.bucket_regional_domain_name
}

output "s3_bucket_encryption" {
  description = "Server-side encryption status"
  value       = aws_s3_bucket.pipeline-bucket.server_side_encryption_configuration[0].rule[0].apply_server_side_encryption_by_default.sse_algorithm
}

output "s3_bucket_versioning" {
  description = "Versioning status of the bucket"
  value       = aws_s3_bucket.pipeline-bucket.versioning[0].enabled
}
