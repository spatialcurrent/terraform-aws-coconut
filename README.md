<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Creates an instance of Coconut

Creates the following resources:

* ACM Certificate
* CloudFront Distribution
* Route53 Records
* S3 Bucket

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
| route53\_zone\_id |  | string | n/a | yes |
| route53\_zone\_name |  | string | n/a | yes |
| s3\_bucket\_name |  | string | n/a | yes |
| s3\_logs\_bucket\_id |  | string | n/a | yes |
| s3\_logs\_prefix |  | string | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
