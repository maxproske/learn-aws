# Terraform

Watch: https://www.youtube.com/watch?v=Koabqyopqns&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=26

- **Terraform** is an open source IaC tool by HashiCorp that can provision and manage multi-cloud infrastructure.
- It is **declarative**, meaning you define the desired state of your infrastructure, and Terraform will make it happen.
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
```