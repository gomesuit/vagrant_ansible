#!/bin/sh

# install dependency
yum install openssl-devel zlib-devel
yum install libcurl-devel
yum install expat-devel
yum install perl-ExtUtils-MakeMaker
yum install gettext-devel

cd /tmp
wget https://github.com/git/git/archive/v2.8.1.tar.gz
tar zxf v2.8.1.tar.gz
cd git-2.8.1/

make prefix=/usr/local/git2.8.1 all
make prefix=/usr/local/git2.8.1 install

ln -s /usr/local/git2.8.1/bin/git /usr/local/bin/git
