aws configure
# AWS Access Key ID [****************FTFT]: 
# AWS Secret Access Key [****************cvhP]: 
# Default region name [us-east-1]: 
# Default output format [json]: 

# List all S3 buckets
aws s3 ls
# 2023-12-23 20:54:53 mproske-static-app

# Create an EC2 instance
aws ec2 run-instances --image-id ami-0c7217cdde317cfec --count 1 --instance-type t2.micro --key-name aws_login

# Delete all EC2 instances
aws ec2 terminate-instances --instance-ids $(aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output text)
