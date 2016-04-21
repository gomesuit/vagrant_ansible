#!/bin/sh

# install ansible
sh /vagrant/install_ansible.sh

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
