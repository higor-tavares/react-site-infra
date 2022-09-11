output "cdn-url" {
    value = aws_cloudfront_distribution.this.domain_name
}