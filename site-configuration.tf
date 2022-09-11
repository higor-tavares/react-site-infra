data "template_file" "s3-public-policy" {
  template = file("policy.json")
  vars     = { bucket_name = local.domain }
}
resource "aws_s3_bucket" "site" {
  bucket = local.domain
  tags   = local.tags
  acl    = "public-read"
  policy = data.template_file.s3-public-policy.rendered
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  versioning {
    enabled = true
  }
}