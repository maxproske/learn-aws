# AWS CodePipeline

Watch: <https://www.youtube.com/watch?v=Tbp8325cKJ8&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=15>

- Whenever AWS sees an opportunity to make money, they will create a service for it. Do people actually use CodePipeline? **Probably not.** But it avoids choice paralysis to a degree.
- **AWS CodePipeline** is a managed **CI/CD orchestration service** that automates your software release process, and is an alternative to **Jenkins**, CircleCI, etc.
  - **AWS CodeBuild** handles the CI part.
  - **AWS CodeDeploy** handles the CD part.
- **Ansible and shell scripts** are outdated ways to deploy code. **ArgoCD** is the current best practice a GitOps tool.
- **GitOps** is a new git-gentric way to manage **infrastructure** and application configurations using Git as a single source of truth.
- A GitHub webbook triggers CI (Continuous Integration) checks out your code, builds, tests, pushes the image, then finally **invokes your CD** that builds/tests/deploys your code.
