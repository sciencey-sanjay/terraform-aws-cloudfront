output "cloudfront_id" {
  value = aws_cloudfront_distribution.interview_distribution.id
}

output "cloudfront_arn" {
  value = aws_cloudfront_distribution.interview_distribution.arn
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.interview_distribution.domain_name
}

output "cloudfront_iam_arn" {
  value = aws_cloudfront_origin_access_identity.example.iam_arn
}

output "cloudfront_access_identitypath" {
  value = aws_cloudfront_origin_access_identity.example.cloudfront_access_identity_path
}
