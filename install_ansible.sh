#!/bin/sh

# install ansible
yum -y install wget
yum -y install \
	python-setuptools \
	gcc \
	python-devel \
	libffi-devel \
	openssl-devel

cd /tmp
wget http://releases.ansible.com/ansible/ansible-2.0.2.0.tar.gz
tar zxf ansible-2.0.2.0.tar.gz
cd ansible-2.0.2.0
make
make install
cp /vagrant/ansible.cfg /root/.ansible.cfg

