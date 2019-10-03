#!/bin/bash

# On Linux
# install CodeDeploy agent
yum -y update
yum install -y ruby
yum install -y aws-cli
cd /home/ec2-user
aws s3 cp s3://aws-codedeploy-us-east-2/latest/install . --region us-east-2
chmod +x ./install
./install auto

# install java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
yum -y install jdk-8u131-linux-x64.rpm

# install mysql
sudo yum install mysql-server
sudo /sbin/service mysqld start
sudo /usr/bin/mysql_secure_installation
mysql -u root -p
GRANT ALL ON *.* to root@'%' IDENTIFIED BY 'test';





# On Ubuntu
# install CodeDeploy agent
sudo apt-get update
sudo apt-get -y install ruby
sudo apt-get -y install wget
cd /home/ubuntu
wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
# check status
sudo service codedeploy-agent status
sudo service codedeploy-agent start # if not started

# install java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
sudo mkdir /usr/lib/jvm
cd /usr/lib/jvm
sudo tar -xvzf ~/jdk-8u131-linux-x64.tar.gz
sudo vi /etc/environment # add /usr/lib/jvm/jdk1.8.0_131/bin: