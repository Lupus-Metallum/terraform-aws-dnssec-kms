variable "name" {
  description = "Name to use for Key and Key Alias"
  type        = string
}

variable "description" {
  description = "Description to use for KMS key"
  type        = string
  default     = "Used to sign dnssec records"
}

variable "deletion_window_days" {
  description = "The number of days to use for holding the kms key after delete."
  default     = 14
  type        = number
}