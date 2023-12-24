# Basic AWS Project

Watch: https://www.youtube.com/watch?v=FZPTL_kNvXc&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=9

## TODO

- [ ] Create a VPC with public and private subnets in 2 availability zones
- [ ] Each subnet has a NAT gateway and a load balancer node
- [ ] Servers run in private subnets, and are launched/terminated using an Auto Scaling group
- [ ] The servers can connect to the internet by using the NAT gateway to mask the IP address

## Notes

- An **Auto Scaling group** is a group of servers that are launched and terminated automatically based on demand.
- A **Bastion host** is a server that is used to connect to other servers. It is also called a **jump box**. Good for logging.
- **Elasitc IPs** are static IP addresses that can be attached to EC2 instances. So you can keep the same IP. They are free when attached to an instance, but cost money when not attached to an instance.
- A **Launch Template** is a template that defines the configuration of an EC2 instance. It is used by an Auto Scaling group to launch instances.
- **SNS** (Simple Notification Service) is a managed service that provides **pub/sub** (publish/subscribe) functionality. It is used to send notifications to subscribers.
- EC2 instances created via Auto Scaling Groups have no public IP address. They can only be accessed via a Bastion host.
- 