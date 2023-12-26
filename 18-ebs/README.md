# Cost Optimization

Watch: https://www.youtube.com/watch?v=OKYJCHHSWb4&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=20

- **Cost Optimization** is a feature that allows you to monitor your cost efficiency. For example, **Lambda functions** that are running for too long.
- **AWS Budgets** is a service that allows you to set budgets for your account.
- **Boto3** is a Python SDK for AWS. (Portuguese name for doplins that swim in the Amazon river)
- **EBS** (Elastic Block Store) is a service that allows you to create volumes and attach them to EC2 instances.
- EC2 instances are created with an **EBS volume** by default.

**Scenario:** A DevOps Engineer deleted an EC2 instance, but forgot to delete the EBS snapshot. The snapshot is costing the organization money. Create a Lambda function that will delete the snapshot.
1. Fetch all EBS snapshots
2. Filter snapshots that are older than 30 days
3. Delete the snapshots or transfer them to a cheaper storage class (eg. S3 Glacier)

- The default timeout for Lambda functions is **3 seconds**. You can increase it to up to 15 minutes.
- **Zero privileges approach** is the best practice for IAM roles.
- CloudWatch > Events > Rules to trigger the Lambda function every 24 hours.
