# Questions

Watch: https://www.youtube.com/watch?v=qtkWHhikLh8&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=10

Q1: Design a VPC architecture for a 2-tier app (just a frontend and backend) that is highly availble and scalable.
- Distribute the subnets and instnces across mutliple availability zones (eg. us-east-1a&b)
- Use autoscaling groups if load is high
- Use 2 subnets: public and private. The public subnet has a load balancer and the private subnet has the servers.
- A 3-tier app has a frontend, backend, and database.

Q2: How do you restrict outbound internet access for resources in one subnet, but allow it for resources on another subnet?
- Go to the route tables, and just remove the default route (0.0.0.0/0) that points to the internet gateway

Q3: You have a VPC with public and private subnets. Instances in the private subnet need to access the internet for software updates. How would you allow internet access for instance in the private subnet?
- Use a NAT gateway. It will allow private instances to access the internet, and hackers will only see the public IPv4 of your load blancer.

Q4: You have launches EC2 instances and want them to communicate with eachother usng private IP.
- By default, EC2 instances can communicate with eachother using private IP.
- To take it to the next step, **VPC Pairing** is used to connect 2 VPCs together. It is used to connect VPCs in different regions.

Q5: How do you implement strict network access control?
- Use NACLs to control inbound and outbound traffic to configure organization-wide inbound/outbound settings.

Q6: Your org requires an isolated environment within the VPC for running sensitive workloads. How would you implement this?
- Use a private subnet with no internet access. Isolation is taken care by the subnet. No access by the bastion host.

Q7: How do you scurely access S3 from EC2 instances?
- **VPC Endpoints** are used to connect to AWS services without going through the internet. It is used to connect to S3, DynamoDB, etc.

Q8: What is the difference between NACL and Subnet?
- A subnet is a range of private IP addresses. NACL controls inbound/outbound traffic rules at the subnet layer. Security groups control inbound/outbound traffic rules at the instance layer.
- NACLs are **stateless**, but security groups are **stateful**.
- **Stateless** means each packet is treated independently, and rules for both inbound and outbound traffic must be set explicitly.
- **Stateful** means that the rules for inbound traffic automatically apply to outbound traffic, and vice versa. So you only need to set one rules. For example, a request from an EC2 instance to google.com will automatically open the inbound port to receive a response.

Q9: What is the difference between IAM users, groups, roles, and policies?
- IAM users are people who can log into the AWS console or use the CLI, if you've only allowed that.
- Groups are a set of users. You can assign policies to groups.
- Roles are used by services to access other services. For example, an EC2 instance can access S3.
- Policies are what users, groups, and roles can do. They are JSON documents.

Q10. You have a private subnet with a number of instances with no internet access. How do you allow them to access the internet?
- Setup a bastion host in the public subnet. Then, you can SSH into the bastion host, and then SSH into the private instances.
