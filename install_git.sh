#!/bin/sh

# install dependency
yum install -y gcc
yum install -y openssl-devel zlib-devel
yum install -y libcurl-devel
yum install -y expat-devel
yum install -y perl-ExtUtils-MakeMaker
yum install -y gettext-devel

cd /tmp
wget https://github.com/git/git/archive/v2.8.1.tar.gz
tar zxf v2.8.1.tar.gz
cd git-2.8.1/

make prefix=/usr/local/git2.8.1 all
make prefix=/usr/local/git2.8.1 install

ln -s /usr/local/git2.8.1/bin/git /usr/local/bin/git

git config --global user.email "you@example.com"
git config --global user.name "gomesuit"

git config --global credential.helper cache
git config credential.helper 'cache --timeout=300'
