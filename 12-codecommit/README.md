# AWS CodeCommit

Watch: https://www.youtube.com/watch?v=n42nFDTkTCI&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=14

- **AWS CodeCommit** is a managed **Git** service that hosts private Git repositories.
- An open source CI/CD pipeline might look like: GitHub > Jenkins > Build/Test/Static Analysis > ArgoCD/Ansible/shell script to deploy Docker image to EC2
  - **AWS CodeCommit** is an alternative to GitHub, GitLab, and BitBucket.
  - **AWS CodePipeline** is an alternative to Jenkins.
  - **AWS CodeBuild** is an alternative to maven/npm build.
  - **AWS CodeDeploy** is an alternative to Ansible/ArgoCD/shell scripts.
- You cannot use the root user to access CodeCommit. You must create an IAM user with the `AWSCodeCommitFullAccess` policy.
- Disadvantages: **No public repositories**, issue tracking, webhooks, and community. Very few integrations. You can only create private repositories.
- We won't use this service.
