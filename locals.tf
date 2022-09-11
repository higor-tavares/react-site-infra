locals {
  domain = random_pet.bucket.id
  tags = {
    Name        = "React Site",
    Description = "Simple static site hosted with s3 and CloudFront"
    Version     = "0.0.1"
  }
}