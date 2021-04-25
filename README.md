# terraform-aws-dnssec-kms

Used to create a DNSSEC compliant KMS key. Thought is that this alleviates creating a KMS key per domain to minimize reoccuring cost. Can be used in conjunction with lupus-metallum/terraform-aws-r53-zone.

## Example

``` Terraform
module "dnssec_key" {
  source   = "Lupus-Metallum/dnssec-kms/aws"
  version  = "1.0.0"
  
  name     = "my-dnssec-key
}
```