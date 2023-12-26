# AWS CloudWatch

Watch: https://www.youtube.com/watch?v=u4XngwbY-O0&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=18

- **AWS CloudWatch** is a service that monitors and alerts on your account's health.
- **Metrics** are the fundamental concept in CloudWatch. Note: You have to send custom metrics to track memory usage.
- **Alarms** are notifications that are triggered when a metric reaches a certain threshold. For example, 90% CPU usage on an EC2 instance. It will create a **red line **on the CPU graph.
- **Cost Optimization** is a feature that allows you to monitor your costs. For example, **Lambda functions** that are running for too long.
- **Log Insights** allows you to query your logs.
- It can integrate with other services and help you with scaling, by informing the Auto Scaling Group to add more instances.
- Enabling **Detailed Monitoring** on an EC2 instance will send metrics every 1 minute instead of every 5 minutes.
- **SNS** (Simple Notification Service) is a service that allows you to send notifications to other services. **Topics** are the fundamental concept in SNS, that work like **e-mail double opt-in** scubriber lists.
- 