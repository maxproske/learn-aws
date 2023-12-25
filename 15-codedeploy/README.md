# AWS CodeDeploy

Watch: https://www.youtube.com/watch?v=8ftrKNbSv28&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=17

- **AWS CodeDeploy** is a managed **CD service** that automates application deployments to EC2, Lambda, and on-premises instances.
- **Tags** are key-value pairs that you can assign to AWS resources to group and search for them.
- You have to install a **CodeDeploy Agent** on your EC2 instances.
- **In-place deployments** are the default deployment type. The application on the instance is stopped, until the new version is started and validated. (What we currently do)
- **Blue/green deployments** deploy a new version of your application alongside the old version. You can test the new version before sending production traffic to it.
- **appspec.yml** is a YAML file that tells CodeDeploy what to do.