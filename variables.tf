## Variables Definition

variable "aws_region" {
  default = "us-west-1"
}

variable "s3_domain_name" {
  type = string
}

variable "s3_origin_id" {
  type = string
}

variable "oai_comment" {
  type = string
}

variable "distribution_enabled" {
  type = bool
}

variable "ipv6_enabled" {
  type = bool
}

variable "comment" {
  type = string
}

variable "default_page" {
  type = string
}

variable "include_cookies_log" {
  type = bool
}

variable "bucket_logs" {
  type = string
}

variable "bucket_prefix" {
  type = string
}

variable "cache_allowed_methods" {
  type = list(string)
}

variable "cache_cached_methods" {
  type = list(string)
}

variable "forwarded_query_string" {
  type = bool
}

variable "cookies_forward" {
  type = string
}

variable "cache_protocol_policy" {
  type = string
}

variable "cache_min_ttl" {
  type = number
}

variable "cache_default_ttl" {
  type = number
}

variable "cache_max_ttl" {
  type = number
}

variable "price_class" {
  type = string
}

variable "georestriction_type" {
  type = string
}

variable "geolocations" {
  type = list(string)
}

variable "tag_environment" {
  type = string
}

variable "tag_dept" {
  type = string
}

variable "tag_application" {
  type = string
}

variable "tag_applicationowner" {
  type = string
}

variable "cost_center" {
  type = string
}

variable "cloudfront_certificate" {
  type = bool
}
