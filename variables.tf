# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the operator when calling this terraform module
# ---------------------------------------------------------------------------------------------------------------------
variable "aws_account_id" {
  description = "AWS Account Number"
  type        = string
}

variable "aws_region" {
  description = "AWS Account Region in which to create the resource"
  type        = string
  default     = "us-east-1"
}

variable "name_prefix" {
  description = "Path used for each SSM parameter created by the module"
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "parameters" {
  description = "Non-encrypted parameters"
  type        = map(any)
  default     = {}
}

variable "secure_parameters" {
  description = "Secure parameters"
  type        = map(any)
  default     = {}
}

variable "prevent_overwrite" {
  description = "List of parameter names to prevent overwrite for"
  type        = list(string)
  default     = []
}

variable "kms_key_id" {
  type        = string
  description = "The KMS key to use for encryption"
  default     = ""
}

variable "advanced_tier" {
  description = "List of parameter names that should have tier set to Advanced"
  type        = list(string)
  default     = []
}
