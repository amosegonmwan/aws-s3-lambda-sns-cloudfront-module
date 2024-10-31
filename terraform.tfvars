sns_topic_subscriptions = [
  {
    protocol = "sms"
    endpoint = "+14031234567"
  },
  {
    protocol = "email"
    endpoint = "amos.egonmwan@gmail.com"
  },
]

sns_topic_name         = "wemadevops-cloudfront-topic"
sns_topic_display_name = "wemadevops-cloudfront"
website_bucket         = "wemadevops-cloudfront-s3-website-bucket"
kms_master_key_id      = "alias/aws/sns"
log_bucket             = "wemadevops-cloudfront-s3-log-bucket"
