<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Creates an instance of Coconut hosted on S3 and served from CloudFront.

Creates the following resources:

* ACM Certificate
* S3 Bucket
* CloudFront Distribution
* Route53 Records
* IAM Policy to Write Updates

## Usage

```hcl
module "production" {
  source = "spatialcurrent/coconut/aws"

  fqdn            = "coconut.spatialcurrent.io"
  environment     = "production"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cloudfront\_comment |  | string | n/a | yes |
| cloudfront\_logs\_bucket\_domain\_name |  | string | n/a | yes |
| cloudfront\_origin\_id |  | string | n/a | yes |
| environment |  | string | n/a | yes |
| fqdn |  | string | n/a | yes |
| iam\_policy\_s3\_write |  | string | n/a | yes |
| route53\_zone\_id |  | string | n/a | yes |
| s3\_bucket\_name |  | string | n/a | yes |
| s3\_logs\_bucket\_id |  | string | n/a | yes |
| s3\_logs\_prefix |  | string | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
