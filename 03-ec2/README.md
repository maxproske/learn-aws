# EC2

Watch: https://www.youtube.com/watch?v=Dc0t4LDOySY&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=4

- **EC2** (Elastic Compute Cloud) is a **managed service** that provides **virtual private servers** (CPU, RAM, and disk). Instances are based on **
Amazon Linux** by default.
- What is the **elastic** prefix? It means you can **scale up** and **scale down**.
- Like DigitalOcean, there are different types of servers, eg. **General Purpose**, **Compute Optimized**, **Memory Optimized**, **Storage Optimized**, etc.
- **Regions** are physical locations in the world. **Availability Zones** are data centers within a region. For example, **us-east-1** is a region, and **us-east-1a** is an availability zone. These are used to create **high availability**.
- 💡 Regions created since 2019 are not available by default. You have to **opt-in** to use them.
- Free tier: In your first year includes 750 hours of t2.micro. 
- USD$0.0162 * 750 hours = USD$12.15/mo
- **Key pair** is a public/private key pair that allows you to connect to your EC2 instance. You can create a new key pair or use an existing one.
- By default, your instance will not be accessible from the internet. You have to create a **security group** to allow access.