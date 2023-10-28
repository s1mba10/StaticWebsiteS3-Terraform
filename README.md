# Static Website Deployment using Terraform and AWS S3 👨‍💻

This project demonstrates how to use Terraform to deploy a static website to an AWS S3 public bucket. You can easily set up your own static website by following the steps below.

## Prerequisites

Before you begin, make sure you have the following prerequisites installed:

1. [Terraform](https://www.terraform.io/downloads.html)
2. [AWS CLI](https://aws.amazon.com/cli/)

You should also have your AWS credentials configured. You can set up your AWS credentials using the `aws configure` command.

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/StaticWebsiteS3-Terraform.git
   cd StaticWebsiteS3-Terraform


2. Initialize your Terraform working directory:

   ```bash
   terraform init
   ```


3. Apply the Terraform plan:

   ```bash
   terraform apply -auto-approve
   ```

   This command will create the necessary AWS resources and deploy your static website.

5. Once the Terraform apply command completes, you will see the S3 bucket URL where your website is hosted. You can access your website by visiting this URL in a web browser.

## Cleaning Up 🚮

If you want to tear down the resources created by Terraform, you can do so with the following command:

```bash
terraform destroy -auto-approve
```

This will remove the AWS S3 bucket and associated resources.