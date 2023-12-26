# AWS ECS

Watch: https://www.youtube.com/watch?v=nnIFkEOzNp4&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=23

- **AWS ECS** (Elastic Container Service) is a closed-service alternative to Kubernetes, offering a **container orchestration service** that allows you to run containers on AWS.
- Solves the problem of **Auto Healing** to replace unhealthy instances, and **Auto Scaling** to dynamically add more instances.
- The evolution of Container Orchestration environments has been: **Docker Swarm** -> **Kubernetes** -> ECS or Managed K8s like EKS. An open source alternative is **OpenShift**.
- In the world of multi-cloud, ECS has a stickiness to AWS. Migrating to Azure is a blocker. If you want to be multi-cloud, use Kubernetes.
- **Fargate** is a serverless compute service for containers that works with both ECS and EKS.
- A **Task Definition** is a JSON file that tells ECS how to run a Docker container.
- A **Task** is a running container. For short-running tasks like batch jobs.
- A **Service** is a group of tasks that are running the same task definition. For long-running appliactions like a web server.
- A **Cluster** is a group of services.
- Today you can deploy a cluster with 3 EC2 instances (1 master, 2 workers).
- A **CRD** (Custom Resource Definition) is a Kubernetes concept that allows you extend its capabilities by adding your own **custom resources**. Extremely community driven.
- **ISTID**, **ArgoCD**, and **FluxCD** are some examples of CRDs.
- AWS ECS is behind because it cannot be extended with CRDs, and it doens't support Ingress rules like applying WAF.
- ECS supports Fargate and EC2, so you have serverless and server options.
- **EKS** (Elastic Kubernetes Service) is a managed Kubernetes service that allows you to run Kubernetes on AWS.
- Amazon feels Kubernetes is too complex, so they created ECS. Create a task definition, and ECS will run everything for you. But it's not as successful.
- 