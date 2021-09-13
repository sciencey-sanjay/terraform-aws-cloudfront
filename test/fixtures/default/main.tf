module "cloudfront_live" {
  source = "../../.."

     s3_domain_name="s3-website-interview-test.s3.amazonaws.com"
     s3_origin_id="CloudfrontS3Origin"
     oai_comment= "Origin Access Identity for Cloudfront"
     distribution_enabled = true
     ipv6_enabled            = true
     comment                   = "test Clodufront distribution using S3"
     default_page             = "index.html"

     include_cookies_log = false
     bucket_logs              = "mylogs.s3.amazonaws.com"
     bucket_prefix          =  "cf"
  
     cache_allowed_methods = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
     cache_cached_methods  = ["GET", "HEAD"]
     forwarded_query_string = false
    cookies_forward= "none"

    cache_min_ttl                = 0
    cache_default_ttl            = 3600
    cache_max_ttl                = 86400
 
    price_class = "PriceClass_200"
    georestriction_type= "whitelist"
    geolocations        = ["US", "CA"]
    tag_environment = "test"
    tag_dept = "ecommerce"
    tag_application ="web hosting"
    tag_applicationowner = "John Doe"
    cost_center="12345"
    cloudfront_certificate = true
    cache_protocol_policy="redirect-to-https"
}
