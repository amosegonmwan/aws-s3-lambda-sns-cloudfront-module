# Terraform CloudFront, S3, SNS, and Lambda Setup

This Terraform project provisions a serverless setup using AWS CloudFront, S3, SNS, and Lambda for a website with file upload notifications. This includes an S3 bucket for hosting, CloudFront distribution for content delivery, and an SNS topic to alert on new file uploads to the bucket.

## Project Structure

```
```plaintext
.
├── Makefile                       # Build and deployment scripts
├── README.md                      # Project documentation
├── main.tf                        # Main module configuration
├── output.tf                      # Outputs configuration
├── provider.tf                    # AWS provider and backend setup
├── terraform.tfvars               # Variable definitions
├── variables.tf                   # Variable declarations
├── s3-lambda-sns-cloudfront/      # CloudFront, S3, Lambda, SNS module
│   ├── cloudfront.tf              # CloudFront resource definitions
│   ├── data.tf                    # Data sources and IAM policies
│   ├── lambda.tf                  # Lambda resource definitions
│   ├── src/                       # Lambda function source code
│   │   └── function.py            # Lambda function for event processing
│   └── website/                   # Static website content
│       ├── error.html             # Error page for CloudFront
│       └── index.html             # Main page for the static website
```

### Prerequisites

- **Terraform**: v1.0 or newer
- **AWS CLI**: Configured with sufficient permissions
- **Tfsec**: Install `tfsec` for security checks in the `Makefile`
  

## Outputs
- **CloudFront Domain Name**: The CloudFront URL for accessing the website.

## Variables
Define values in terraform.tfvars:

- `sns_topic_name`: Name for the SNS topic.
- `sns_topic_display_name`: Display name for the SNS topic.
- `sns_topic_subscriptions`: SNS subscriptions (e.g., email, SMS).
- `website_bucket`: S3 bucket name for website hosting.
- `kms_master_key_id`: KMS key for SNS encryption.
- `log_bucket`: S3 bucket for CloudFront logs.

## IAM Policies
IAM roles and policies for Lambda, S3, SNS, and CloudFront are defined in `data.tf` and `lambda.tf` to securely manage permissions.

## Makefile Targets
The Makefile includes several targets to streamline development tasks:

* `make check`: Runs Terraform initialization, format, and validation checks.
* `make plan`: Generates a Terraform execution plan.
* `make test`: Runs tfsec for security checks.
* `make apply`: Deploys the Terraform configuration.
* `make destroy`: Deletes all managed resources.
