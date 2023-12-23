# https://www.jenkins.io/doc/book/installing/linux/

## SSH into EC2 instance
ssh -i <path-to-pem-file> ubuntu@<ec2-instance-ip>

# Install Java
sudo apt-get update
sudo apt-get install openjdk-17-jdk -y

# Install Jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
