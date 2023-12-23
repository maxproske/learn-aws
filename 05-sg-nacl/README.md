# Security Groups and NACL

Watch: https://www.youtube.com/watch?v=TtlKFgfN3PU&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=7

- There are multiple layers where you can add security. Security is a shared responsibility.
- Can control **inbound** and **outbound** traffic.
- A **security group** is an additional layer of security at the **instance level** (eg. Exposed ports on an EC2 instance)
- By default, all outbound traffic is allowed except for email (port 25), and all inbound traffic is denied except for SSH (port 22).
- A **NACL** (Network Access Control List) is an additional layer of security at the **subnet level**. (eg. Exposed ports on a subnet). This allows you to define **orgnization-wide rules**.
- DevOps are also called **SRE** (Site Reliability Engineers) and SysAdmins.
- Whatever has the highest **rule number** is the rule that is applied. (eg. Rule 100 is applied before rule 200).
