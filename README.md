# terraform-aws-dnssec-kms

Used to create a DNSSEC compliant KMS key. Thought is that this alleviates creating a KMS key per domain to minimize reoccuring cost. Can be used in conjunction with lupus-metallum/terraform-aws-r53-zone.

## Example

``` Terraform
module "dnssec_key" {
  source   = "Lupus-Metallum/dnssec-kms/aws"
  version  = "1.0.3"
  
  name     = "my-dnssec-key"
}

module "my_dnssec_zone" {
  source   = "Lupus-Metallum/r53-zone/aws"
  version  = "1.0.11"
  
  domain_name      = "example.com"
  kms_key_arn      = module.dnssec_key.key_arn
  signing_key_name = "my-signing-key"
  ttl              = 300

}
```