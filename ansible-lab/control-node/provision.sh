#!/bin/sh
sudo yum install -y epel-release 
echo "Installing ansible..."
sudo yum install -y ansible 

cat <<EOT >> /etc/hosts
192.168.56.11 control-node
192.168.56.12 app01
192.168.56.13 db01
EOT