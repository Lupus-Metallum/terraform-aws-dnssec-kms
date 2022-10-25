# terraform-aws-dnssec-kms

Used to create a DNSSEC compliant KMS key. Thought is that this alleviates creating a KMS key per domain to minimize reoccuring cost. Can be used in conjunction with lupus-metallum/terraform-aws-r53-zone.

## Example

``` Terraform
module "dnssec_key" {
  source   = "Lupus-Metallum/dnssec-kms/aws"
  version  = "1.0.4"
  
  name     = "my-dnssec-key"
}

module "my_dnssec_zone" {
  source   = "Lupus-Metallum/r53-zone/aws"
  version  = "1.0.12"
  
  domain_name      = "example.com"
  dnssec           = true
  kms_key_arn      = module.dnssec_key.key_arn
  signing_key_name = "my-signing-key"
  ttl              = 300

}
```
<!-- BEGIN_TF_DOCS -->

<img src="https://raw.githubusercontent.com/Lupus-Metallum/brand/master/images/logo.jpg" width="400"/>



## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name to use for Key and Key Alias | `string` | n/a | yes |
| <a name="input_deletion_window_days"></a> [deletion\_window\_days](#input\_deletion\_window\_days) | The number of days to use for holding the kms key after delete. | `number` | `14` | no |
| <a name="input_description"></a> [description](#input\_description) | Description to use for KMS key | `string` | `"Used to sign dnssec records"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | n/a |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | n/a |
<!-- END_TF_DOCS -->