# Manually installing SSM Agent on Ubuntu Server instances
# https://docs.aws.amazon.com/systems-manager/latest/userguide/agent-install-ubuntu.html
ssh ubuntu@<ec2>

sudo systemctl start snap.amazon-ssm-agent.amazon-ssm-agent.service
