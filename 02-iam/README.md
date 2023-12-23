https://www.youtube.com/watch?v=mCLYcsJ0GXQ&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=3

Imagine AWS is a bank...
- **Authentication** means you can enter the bank
- **Authorization** means you can go into the vault and take money out
- With **root access**, you can do anything the bank
- AWS generally offers more advanced features that are suitable for enterprise needs like IAM.

IAM
- **IAM** (Identity Access Managemet) is an **AWS service** that manages **users** and **permissions**.
- **Users** are people who can log into the AWS console.
- **Permissions** are what users can do in the AWS console.
- IAM is a **global** service, not a **regional** service.
- IAM is the only AWS service that is **global** and **free**.
- **Roles** are created for **services** to access other services.
- By default, users have 1 policy attached to them: **IAMUserChangePassword**.
- AWS has **Managed Policies**, but you can also create custom policies.