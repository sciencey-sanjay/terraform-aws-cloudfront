output "cf_id" {
  value = "${module.cloudfront_live.cloudfront_id}"
}

output "cf_arn" {
  value = "${module.cloudfront_live.cloudfront_arn}"
}

output "cf_domain_name" {
  value = "${module.cloudfront_live.cloudfront_domain_name}"
}

output "cf_iam_arn" {
  value = "${module.cloudfront_live.cloudfront_iam_arn}"
}

output "cf_access_identitypath" {
  value = "${module.cloudfront_live.cloudfront_access_identitypath}"
}
