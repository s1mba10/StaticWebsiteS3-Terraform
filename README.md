# Static Website Deployment using Terraform and AWS S3 👨‍💻

This project demonstrates how to use Terraform to deploy a static website to an AWS S3 public bucket. You can easily set up your own static website by following the steps below.

<img width="1440" alt="Screenshot 2023-10-28 at 10 02 44" src="https://github.com/s1mba10/StaticWebsiteS3-Terraform/assets/101098236/0ae8a134-d6c6-4723-ad93-39786c1b55be">

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
   
<img width="1044" alt="Screenshot 2023-10-28 at 10 41 24" src="https://github.com/s1mba10/StaticWebsiteS3-Terraform/assets/101098236/c354d214-3572-41ae-81c9-01842f614cf5">


5. Once the Terraform apply command completes, you will see the S3 bucket URL where your website is hosted. You can access your website by visiting this URL in a web browser.

<img width="727" alt="Screenshot 2023-10-28 at 10 42 20" src="https://github.com/s1mba10/StaticWebsiteS3-Terraform/assets/101098236/60de5fa7-19e7-40a5-9e3b-794dc7a10949">


## Cleaning Up 🚮

If you want to tear down the resources created by Terraform, you can do so with the following command:

```bash
terraform destroy -auto-approve
```

This will remove the AWS S3 bucket and associated resources.
