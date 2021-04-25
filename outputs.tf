output "key_arn" {
    value = aws_kms_key.this.arn
}

output "key_id" {
    value = aws_kms_key.this.key_id
}

output "key_name" {
    value = aws_kms_key.this.name
}