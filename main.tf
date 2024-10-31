module "cloudfront" {
  source                  = "./s3-lambda-sns-cloudfront"
  sns_topic_subscriptions = var.sns_topic_subscriptions
  sns_topic_name          = var.sns_topic_name
  sns_topic_display_name  = var.sns_topic_display_name
  website_bucket          = var.website_bucket
  kms_master_key_id       = var.kms_master_key_id
  log_bucket              = var.log_bucket
}