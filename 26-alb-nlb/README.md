# AWS Load Balancers

Watch: https://www.youtube.com/watch?v=bCS9m5RVPyo&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=28

- The 7 layers of the **OSI model** describe how a packet travels from client to server and back.
- Application Layer (Layer 7): The **Application Load Balancer** (ALB) intercepts traffic here for managing HTTP traffic. It determines protocols and routes based on the application layer.
  - **Cloudflare** is a CDN that sits at this layer.
  - It is a costly and slow load balancer because of the amount of processing it does.
- Presentation Layer (Layer 6): Data is encrypted using SSL/TLS.
- Session Layer (Layer 5): The server processes session-related information like request creation time.
- Transport Layer (Layer 4): The **Network Load Balancer** (NLB) intercepts packets at this layer. It is optimized for TCP/UDP traffic, breaking down your request into packets.
  - 💡 **DigitalOcean Load Balancers** are a L4 load balancer.
- Network Layer (Layer 3): The **Gateway Load Balancer** (GWLB) intercepts traffic here. It's designed for IP traffic, which moves through multiple routers.
  - **NordVPN** creates a secure connection at this layer.
- Data Link Layer (Layer 2): The final routers, including the data center's switch, before reaching the server.
- Physical Layer (Layer 1): Data is transmitted as bits through cables that connect to your virtual server.
- **Load Balancers** are used to distribute traffic across multiple servers. They can be used to increase availability and performance.
- **Ratio** load balancing is a technique that sends a certain percentage of traffic to each server. It can be used to test new features on a small percentage of users.
- Users access the load balancer, and the load balancer accesses the EC2 instances.
- There are hundreds of load balancing techniques. **Round Robin** is a basic load balancing algorithm that sends requests to each server in turn. Nginx can even be used as a load balancer.
- **Sticky Sessions** are used to send a user to the same server each time. It can be used to store session data on the server.
- **Health Checks** are used to determine if a server is healthy. If it's not, it will be removed from the load balancer.
