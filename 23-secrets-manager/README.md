# AWS Systems Manager & Secrets Manager

Watch: https://www.youtube.com/watch?v=FllcHYsBm78&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=25

- **AWS Systems Manager** and **AWS Secrets Manager** are both service that allow you to store, manage, and retrieve secrets.
- Have you ever wanted to store secrets for $0.40 per secret per month? Well have I got the service for you!
  - Non-sensitive information can be stored in **AWS Parameter Store** to reduce cost.
- The difference between the two is that **AWS Secrets Manager** is a newer service that allows you to **rotate** secrets.
- For example, it can rotate your database password secret every 60 days.
- **Hashicorp Vault** is an open source secrets manager.
- When is rotating secrets useful? When you have a secret that is used by multiple services, and you want to rotate it without having to update all the services.
