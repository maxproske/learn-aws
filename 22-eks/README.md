# 22 - EKS

https://github.com/iam-veeramalla/aws-devops-zero-to-hero/tree/main/day-22

```sh
# Create an EKS cluster using Fargate worker nodes instead of EC2 instances
eksctl create cluster \
    --name demo-cluster \
    --region us-east-1 \
    --fargate

# Add new context to ~/.kube/config 
# Maybe required??
aws eks update-kubeconfig \
    --name demo-cluster \
    --region us-east-1

# Verify the cluster
kubectl get nodes

# Create Fargate profile (namespace) on EKS cluster
eksctl create fargateprofile \
    --cluster demo-cluster \
    --region us-east-1 \
    --name alb-sample-app \
    --namespace game-2048

# Apply the Deployment, Service, and Ingress resource
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.5.4/docs/examples/2048/2048_full.yaml

# Get resources by namespace
kubectl get pods -n game-2048 -w
kubectl get svg -n game-2048
kubectl get ingress -n game-2048

# Setup OIDC for programatic IAM roles
eksctl utils associate-iam-oidc-provider \
    --cluster demo-cluster \
    --region us-east-1 \
    --approve

# Create IAM policy for the ALB, courtesy of SIG
curl -O https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.5.4/docs/install/iam_policy.json

aws iam create-policy \
    --policy-name AWSLoadBalancerControllerIAMPolicy \
    --policy-document file://iam_policy.json

# Create IAM service account
eksctl create iamserviceaccount \
  --cluster=demo-cluster \
  --region us-east-1 \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --role-name AmazonEKSLoadBalancerControllerRole \
  --attach-policy-arn=arn:aws:iam::863783397862:policy/AWSLoadBalancerControllerIAMPolicy \
  --approve

# Create ALB controller using Helm and update the chart repo
helm repo add eks https://aws.github.io/eks-charts
helm repo update eks

helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=demo-cluster \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region=us-east-1 \
  --set vpcId=vpc-008a900dc280f8aab

# Verify
kubectl get deployment -n kube-system aws-load-balancer-controller

# It should have an A record now
kubectl get ingress -n game-2048

# Cleanup
eksctl delete cluster \
    --name demo-cluster \
    --region us-east-1
```