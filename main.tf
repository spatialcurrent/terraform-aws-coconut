/**
 * Creates an instance of Coconut
 *
 * Creates the following resources:
 *
 * * ACM Certificate
 * * CloudFront Distribution
 * * Route53 Records
 * * S3 Bucket
 *

 * ## Usage
 *
 * ```hcl
 * module "production" {
 *   source = "spatialcurrent/coconut/aws"
 *
 *   fqdn            = "coconut.spatialcurrent.io"
 *   environment     = "production"
 * }
 * ```
 */

module "website" {
  source = "../terraform-aws-website.git"

  origin_id = "${var.cloudfront_origin_id}"

  cloudfront_tags                 = "${map("Environment", "${var.environment}")}"
  cloudfront_comment              = "${var.cloudfront_comment}"
  cloudfront_origin_read_timeout  = 30
  cloudfront_origin_ssl_protocols = ["TLSv1", "TLSv1.1", "TLSv1.2"]

  route53_zone_id = "${var.route53_zone_id}"

  fqdn = "${var.fqdn}"

  acm_tags = "${map("Environment", "${var.environment}")}"

  # CloudFront expects the bucket domain name
  cloudfront_logs_bucket_domain_name = "${var.cloudfront_logs_bucket_domain_name}"
  cloudfront_forwarded_query_strings = false

  cloudfront_404_response_code = 200
  cloudfront_404_response_path = "/index.html"

  s3_bucket_name          = "${var.s3_bucket_name}"
  s3_cors_allowed_methods = []
  s3_cors_allowed_origins = []

  # S3 expects the bucket id
  s3_logs_bucket_id = "${var.s3_logs_bucket_id}"
  s3_logs_prefix    = "${var.s3_logs_prefix}"

  s3_tags = "${map("Environment", "${var.environment}", "Application", "Coconut")}"

  index_document = "index.html"
  error_document = ""
  routing_rules  = ""
}
