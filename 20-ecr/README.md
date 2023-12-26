# AWS ECR

Watch: https://www.youtube.com/watch?v=-8_r28jJ6AM&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=22

- **AWS ECR** (Elastic Container Registry) is a managed **Docker container registry** that is highly integrated with other AWS services like Fargate. An alternative to Docker Hub.
- 💡 Just like Instagram, you can post your images and other people can see them.
- 💡 If an AWS service starts with "E", it is highly scalable and available in nature. You can increase its capacity by clicking a button.
- **Docker** is a tool that allows you to create, deploy, and run applications using containers.
- **Dockerfile** is a file that contains instructions for Docker to build an image.
- An **image** is a read-only template with instructions for creating a Docker container.
- A **container** is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one environment to another.
- By default, ECR images are **private**. As opposed to Docker Hub, where images are public by default.
- Allows you to **scan** your images for vulnerabilities.

```sh
# Login
aws configure

# Get ECS auth token and login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 863783397862.dkr.ecr.us-east-1.amazonaws.com

# Build and tag the image
docker build -t learn-aws-devops .

docker tag learn-aws-devops:latest 863783397862.dkr.ecr.us-east-1.amazonaws.com/learn-aws-devops:latest

# Push
docker push 863783397862.dkr.ecr.us-east-1.amazonaws.com/learn-aws-devops:latest
```
