#!/bin/sh


# install ansible
yum -y install wget
yum -y install python-setuptools gcc python-devel
cd /tmp
wget http://releases.ansible.com/ansible/ansible-2.0.2.0.tar.gz
tar zxf ansible-2.0.2.0.tar.gz
cd ansible-2.0.2.0
make
make install
cp /vagrant/ansible.cfg /root/.ansible.cfg

# git clone playbook
#cd /home/vagrant
#git clone https://github.com/gomesuit/ansible_Playbook.git
#cd ansible_Playbook

# run ansbile
#ansible-playbook -i hosts localhost.yml

# git clone serverspec file
#cd /home/vagrant
#git clone https://github.com/gomesuit/serverspecFile.git

# run serverspec
#cd serverspecFile
#rake spec

# install git
sh /vagrant/install_git.sh

# git clone provisioner
cd /home/vagrant
git clone https://github.com/gomesuit/provisioner.git
# run ansbile
cd /home/vagrant/provisioner
ansible-playbook -i hosts provisioner.yml
