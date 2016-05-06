#!/bin/sh

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

export PATH=$PATH:/usr/local/bin

# git clone provisioner
cd ~
git clone https://github.com/gomesuit/provisioner.git
# run ansbile
cd provisioner
ansible-playbook -i hosts provisioner.yml
