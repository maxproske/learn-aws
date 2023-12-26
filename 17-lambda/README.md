# AWS Lambda

Watch: https://www.youtube.com/watch?v=5fTtmeCpSRw&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=19

- **AWS Lambda** is a compute service that solves the problem of serverless, and allows you to run functions (code) without provisioning or managing servers.
- **Serverless** is a term that means you don't have to manage servers. AWS will spinup and tear down the compute.
- If you have a **short running** process, use Lambda. If you have a **long running** process, use EC2.
- S3 and CloudWatch are some event driven services that can trigger Lambda functions.
- When a user uploads a file to S3, it can trigger a Lambda function that will process the file. This is called **Event Driven Programming**.
- Helpful for automating **Cost Optimization**. For example, you can govern the resource usage by flagging stale resources that nobody are using and are costing the organization.
- Helpful for automating security. For example, you can add a **Trigger** for CloudWatch to create a Lambda function that will automatically search for outdated EC2 instances every 24 hours.
- **Enable function URL** in Advanced Settings allows you to invoke the Lambda function from the browser.
- Main definition has to be called `lambda_handler`
