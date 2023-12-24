git remote add codecommit https://git-codecommit.us-east-1.amazonaws.com/v1/repos/learn-aws-devops

git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true

git push codecommit master

# Username: codecommit-user-at-863783397862
# Password: xtPqT875uT0REcMFtd3odQbPV1aQVlRzH4W9rK90+w0=
