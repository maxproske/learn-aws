# Learn AWS

Following a **[YouTube series by Abhishek](https://www.youtube.com/watch?v=-8_r28jJ6AM&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze)** to evaluate AWS DevOps with theoretical and practical examles.

## Cool Things

- You can **auto-scale servers without Kubernetes** using Auto Scaling Groups.
- You can also **auto-scale across multiple availability zones** in the same region (eg. us-east-1a and us-east-1b) for disaster recovery.
- Applications can be deployed to a **private subnet**, only accessible through a load balancer.
- You can define **security groups** to control access to your servers from a CMS.
- Good to know how companies that exclusively use AWS function
- Their managed Kubernetes (EKS) allows you to use serverless (**Fargate**) for burst workloads.

## Not Cool Things

- It's a **Rube Goldberg machine of proprietary services**.
- Each service has its own UI, docs, and learning curve
- Feels like a headless CMS with structured content and permissions for DevOps
- The best series is only 5 months old and already outdated
- Vendor lock-in
- Resources can be hidden if you're in a different region
- $0.40 per secret/month to store secrets
- You can't use the free tier for everything
