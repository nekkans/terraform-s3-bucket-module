variable "aws_profile" {}
variable "aws_region" {}
variable "bucket_name" {}
variable "bucket_acl" {}
variable "bucket_versioning" {
  default = true
}
variable "sse_algorithm" {}
variable "block_public_acls" {
  default = true
}
variable "block_public_policy" {
  default = true
}
variable "ignore_public_acls" {
  default = true
}
variable "restrict_public_buckets" {
  default = true
}
variable "environment" {}
variable "product" {}
variable "component" {}

locals {
  tags = {
    environment = var.environment
    product     = var.product
    component   = var.component
    terraform   = "true"
  }
}
