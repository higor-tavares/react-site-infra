output "cdn-url" {
  value = aws_cloudfront_distribution.this.domain_name
}
output "cdn-dist-id" {
  value = aws_cloudfront_distribution.this.id
}
output "bucke_name" {
  value = aws_s3_bucket.site.bucket
}