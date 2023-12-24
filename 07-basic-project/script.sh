# scp and ssh into bastion instance
scp -i ~/Downloads/aws_login.pem ubuntu@<bastion-ec2-ip>:~/
ssh -i ~/Downloads/aws_login.pem ubuntu@<bastion-ec2-ip>

# ssh into ec2 instance
ssh -i aws_login.pem ubuntu@<private-ec2-instance-ip>
