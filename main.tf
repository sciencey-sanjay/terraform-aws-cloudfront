#  Terraform module to implement S3 

# Provider

terraform {
  required_providers {
    mycloud = {
      source  = "hashicorp/aws"
      version = "~> 2.7.0"
    }
  }
}

provider "mycloud" {
  region = var.aws_region 
}

locals {
  s3_origin_id =var.s3_origin_id
} 

resource "aws_cloudfront_origin_access_identity" "example" {
  comment = var.oai_comment
}


resource "aws_cloudfront_distribution" "interview_distribution" {
  origin {
    domain_name = var.s3_domain_name
    origin_id   = local.s3_origin_id 

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.example.cloudfront_access_identity_path 
    }
  }

  enabled             = var.distribution_enabled
  is_ipv6_enabled     = var.ipv6_enabled
  comment             = var.comment
  default_root_object = var.default_page

  default_cache_behavior {
    allowed_methods  = var.cache_allowed_methods 
    cached_methods   = var.cache_cached_methods 
    target_origin_id = local.s3_origin_id 

    forwarded_values {
      query_string = var.forwarded_query_string

      cookies {
        forward = var.cookies_forward 
      }
    }

    viewer_protocol_policy = var.cache_protocol_policy
    min_ttl                = var.cache_min_ttl
    default_ttl            = var.cache_default_ttl
    max_ttl                = var.cache_max_ttl
  }


  price_class = var.price_class 

  restrictions {
    geo_restriction {
      restriction_type = var.georestriction_type
      locations        = var.geolocations
    }
  }

  tags = {
    environment = var.tag_environment
    department  = var.tag_dept 
    application = var.tag_application
    application_owner = var.tag_applicationowner
    cost_center = var.cost_center	
  }

  viewer_certificate {
    cloudfront_default_certificate = var.cloudfront_certificate
  }
}
