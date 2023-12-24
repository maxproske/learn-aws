# AWS CloudFormation

Watch: https://www.youtube.com/watch?v=ov4WmWgQgsA&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=13

Read: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-ec2-instance-config.html

- **AWS CloudFormation** is a service and a templating language that allows you to declare your AWS **infrastructure as code**.
- **Azure Resource Manager** is the equivalent service in Azure.
- CloudFormation **templates** are **declarative**. You declare the **desired state** of your infrastructure in JSON or YAML, and CloudFormation will make it happen.
- When you submit your template to CloudFormation, it will convert your YAML/JSON to AWS API calls to create a stack. 
- A **Stack** is a collection of AWS resources that are created and managed together. You can delete the stack just as easily.
- An advantage of YAML over JSON is that you can use **comments** (except JSONC, Microsoft's superset).
- **Drift detection** is a feature that periodically detects if resources have been changed outside of CloudFormation. 
  - For example, a DevOps Engineer disabled versioning on S3 buckets in the AWS console.
- **Resources** are the core of CloudFormation templates. Everything else (version, parameters, rules, etc.) is optional.
- The **Type** property of a resource is the AWS resource type. For example, `AWS::S3::Bucket` is the type for an S3 bucket.
- The **Properties** property of a resource is a list of properties that are specific to the resource type. For example, `BucketName` is a property of the `AWS::S3::Bucket` type.
- **Conditions** are used to control whether certain resources are created or not. For example, you can create a condition to check if the environment is `prod`, `staging`, or `dev`.
- Navigate to CloudFormation > Stacks > Drifts, and click "Detect stack drift". In the future, you should revoke access from the affected Group for this setting.
- **Terraform** is a multi-cloud IaC tool with the largest community. **Crossplane** may takeover Terraform in the future.
