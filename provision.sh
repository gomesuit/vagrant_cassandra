#!/bin/sh

# install ansible
yum -y install ansible

# set hosts
echo "192.168.33.12 cassandra1" >> /etc/hosts
echo "192.168.33.13 cassandra2" >> /etc/hosts

# git clone provisioner
cd /home/vagrant
git clone https://github.com/gomesuit/provisioner.git

# run ansbile
cd /home/vagrant/provisioner
ansible-playbook -i hosts provisioner.yml

# set ansible
#cat /vagrant/hosts > /etc/ansible/hosts
