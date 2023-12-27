# Terraform

Watch: https://www.youtube.com/watch?v=Koabqyopqns&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=26

I like the name of this tool, it evokes the idea of rebuilding Mars from scratch.

- **Terraform** is an open source IaC tool by HashiCorp that can provision and manage multi-cloud infrastructure.
- It is **declarative**, meaning you define the desired state of your infrastructure, and Terraform will make it happen.
- It is **idempotent**, meaning you can run the same command multiple times and it will always produce the same result, and it won't create duplicate resources.
- Unlike the AWS CLI, which only requires a username and password, Terraform requires **Access Keys** to be stored in a file.
- **Terraform State** is a file that contains the current state of your infrastructure. It can be stored locally or remotely in an S3 bucket.
- A **Terraform Provider** is a plugin that allows Terraform to interact with a cloud provider.
- Get the **AWS Provider** plugin: https://registry.terraform.io/providers/hashicorp/aws/latest/docs and save it in a file called `provider.tf` and add your region `us-east-1`.

```sh
# Install Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# Initialize project
terraform init
# Initializing the backend...
#
# Initializing provider plugins...
# - Finding hashicorp/aws versions matching "5.31.0"...
# - Installing hashicorp/aws v5.31.0...
# - Installed hashicorp/aws v5.31.0 (signed by HashiCorp)
#
# Terraform has created a lock file .terraform.lock.hcl

# Validate project
terraform validate
# Success! The configuration is valid.

# 🗺️ Plan project (dry run)
terraform plan

# 🚀 Apply project
terraform apply
```

- **HCL** (HashiCorp Configuration Language) is the language used by Terraform. It is similar to JSON, but with comments and interpolation.
- Interpolation is a way to reference variables in other files. (eg. `var.cidr`)
- `provider.tf` is a file that contains the provider plugin. (eg. `aws`)
- `main.tf` is a file that contains the resources that will be created. (eg. `aws_vpc`)
- `variables.tf` is a file that contains variables that can be referenced in other files. (eg. `var.cidr`)
- **Blocks** are used to group resources together. (eg. `resource "aws_vpc" "main"`)
- 169.254.169.254 is the **Metadata Service** that is available to all EC2 instances. It can be used to get information about the instance, such as the instance ID.
- Never version control your .tfstate file. It contains secrets, and you're likely to forget to run `terraform apply` after making changes, so your teammates will have out-of-date state files.
