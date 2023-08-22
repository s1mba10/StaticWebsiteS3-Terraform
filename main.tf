provider "aws" {
  region = var.region
}
#---------------------------------------------------------------------
resource "aws_s3_bucket" "web" {
  bucket_prefix = var.bucket_name
}

resource "aws_s3_bucket_ownership_controls" "web" {
  bucket = aws_s3_bucket.web.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "web" {
  bucket = aws_s3_bucket.web.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "web" {
  depends_on = [
    aws_s3_bucket_ownership_controls.web,
    aws_s3_bucket_public_access_block.web
  ]
  bucket = aws_s3_bucket.web.id
  acl    = "public-read"
}

#---------------------------------------------------------------------
resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.web.id
  key          = "index.html"
  source       = "index.html"
  acl          = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.web.id
  key          = "error.html"
  source       = "error.html"
  acl          = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "tf" {
  bucket       = aws_s3_bucket.web.id
  key          = "tf.png"
  source       = "tf.png"
  acl          = "public-read"
  content_type = "image/png"
}

resource "aws_s3_object" "AWS" {
  bucket       = aws_s3_bucket.web.id
  key          = "AWS.png"
  source       = "AWS.png"
  acl          = "public-read"
  content_type = "image/png"
}
#---------------------------------------------------------------------
resource "aws_s3_bucket_website_configuration" "web" {
  bucket = aws_s3_bucket.web.id
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
  depends_on = [ aws_s3_bucket_acl.web ]
}
#---------------------------------------------------------------------
output "url" {
  value = aws_s3_bucket_website_configuration.web.website_endpoint
}