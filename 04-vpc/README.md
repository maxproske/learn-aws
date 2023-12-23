# VPC

Watch: https://www.youtube.com/watch?v=P8g7Z4NYk3Q&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=6

- A **VPC** (Virtual Private Cloud) is a **managed service** that allows you to create a **private network** in the cloud.
- Imagine a village of lazy people, who don't want to build or maintain their houses (VPC). There is one wise person in the village, and you just need to tell him what you want, and he will do it for you for $$$. Then everyone is happy.
- Without an **internet gateway**, nobody can access secure communities in the village.
- When you create a new account, a default VPC is automatically created for you in each region. This VPC comes with a predefined private **CIDR block** (typically a private /16 IPv4 CIDR block, like 172.31.0.0/16).
- Within a VPC, you create **subnets**, each with its own portion of the VPC's CIDR block.
- A **route table** is a set of rules, called **routes**, that are used to determine where network traffic is directed.
- A **security group** acts as a **firewall** that controls the traffic allowed to reach one or more EC2 instances.
- Internet -> AWS **internet gateway** -> VPC **public subnet** -> Elastic **load balancer** -> **route table** -> **security group** -> EC2 **instance**.
- An **NACL** (Network Access Control List) is a firewall that controls traffic from and to a subnet.
- A **NAT gateway** (Network Address Translation) is a way to translate private IP addresses to public IP addresses.
- 💡 It will also mask the IP address of your EC2 instance, so if you need to download a package, the internet only sees the public IP address of the NAT **gateway**. Cool!
- **VPC Flow Logs** is a (chargable) feature that enables you to capture information about the IP traffic going to and from network interfaces in your VPC.
