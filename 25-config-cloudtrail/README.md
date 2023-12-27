# AWS Config & CloudTrail

Watch: https://www.youtube.com/watch?v=ig1KxKgN8ls&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=27

- **AWS Config** is a service that allows you to audit your AWS resources for organization compliance **when resource configurations change** or **periodically**.
- Government, banking, and healthcare organizations are required to be compliant with certain regulations. But just like WCAG, it does not apply to all organizations.
- **Rules** are used to check for compliance. They can be created by AWS or by you.
- It can be used to check for compliance with the **AWS Well-Architected Framework**.
- When an EC2 instance is reconfigured, it will call **AWS Lambda** functions with the metadata of the EC2 instance to check for compliance.
- **AWS CloudTrail** is a service that allows you to audit your AWS resources for organization compliance **when API calls are made**.
