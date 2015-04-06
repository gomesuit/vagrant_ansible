#!/bin/sh

# init vagrant
#cd /vagrant/provision/install/
#sed -i -e 's/\r$//' *
#/vagrant/provision/install/init_vagrant.sh

#. /etc/global.rc

# install ansible
yum -y install ansible

# set ssh-key
#${SCRIPT_HOME}/set_ssh-key.sh

cd /home/vagrant
git clone https://github.com/gomesuit/ansible_Playbook.git
cd ansible_Playbook

# yum install
ansible-playbook -i localhost yum-playbook.yml

# service stop
ansible-playbook -i localhost servicestop.yml

# set timezone
ansible-playbook -i localhost timezone.yml

# install serverspec
ansible-playbook -i localhost serverspec.yml

#ansible-playbook -i localhost git_serverspec.yml

# run serverspec
cd /home/vagrant
git clone https://github.com/gomesuit/serverspecFile.git
cd serverspecFile
rake spec
