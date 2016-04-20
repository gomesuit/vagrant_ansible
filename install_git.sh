#!/bin/sh


cd /tmp
wget https://github.com/git/git/archive/v2.8.1.tar.gz
tar zxf v2.8.1.tar.gz
cd git-2.8.1/

yum install openssl-devel zlib-devel
yum install libcurl-devel
yum install expat-devel
yum install perl-ExtUtils-MakeMaker
yum install gettext-devel

make
make install

#make prefix=/usr/local all
#sudo make prefix=/usr/local install
