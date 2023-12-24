# AWS CodeBuild

Watch: https://www.youtube.com/watch?v=kOU-7_Sc72U&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=16

- **AWS CodeBuild** is a managed **build service** that compiles source code, runs tests, and produces software packages that are ready to deploy.
- Create a build provider with **GitHub** as your source provider.
- For the worker node, choose **Ubuntu**.
- A **Service Role** is an IAM role that allows CodeBuild to interact with other AWS services.
- The **buildspec.yml** file is a YAML file that tells CodeBuild what to do.
- To store sensitive information, use **AWS Systems Manager**.