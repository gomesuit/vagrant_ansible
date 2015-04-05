#!/bin/sh
echo "alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'" >> /home/vagrant/.bashrc

# init vagrant
/vagrant/provision/install/init_vagrant.sh

. /etc/global.rc

# yum install
${SCRIPT_HOME}/install_yum.sh

# install ruby
#${SCRIPT_HOME}/install_ruby-2.2.0.sh

# install ansible
${SCRIPT_HOME}/install_ansible.sh

# service stop
${SCRIPT_HOME}/stop_service.sh

# set timezone
${SCRIPT_HOME}/set_timezone.sh

# set ssh-key
${SCRIPT_HOME}/set_ssh-key.sh

\cp -rf /vagrant/ansible /home/vagrant/
cd /home/vagrant/ansible
chmod 644 hosts
#ansible-playbook -i hosts simple-playbook.yml
ansible-playbook -i hosts serverspec.yml
