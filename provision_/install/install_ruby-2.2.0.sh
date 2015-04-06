#!/bin/sh

. /etc/global.rc

# ruby
RUBY_HOME="/usr/local/ruby"
RUBY_SRC="ruby-2.2.0"

yum -y install libffi-devel zlib-devel openssl-devel

\rm -rf ${RUBY_HOME}
\rm -rf ${SRC_HOME}/${RUBY_SRC}

cd ${SRC_HOME}
tar zxf ${SRC_HOME}/${RUBY_SRC}.tar.gz
cd ${RUBY_SRC}
./configure --prefix=${RUBY_HOME}
make
make install

cd ${SRC_HOME}/${RUBY_SRC}/ext/openssl
/usr/local/ruby/bin/ruby extconf.rb
sed -i -e "1i top_srcdir = $(cd ../.. && pwd)" Makefile
make
make install

\rm -rf ${SRC_HOME}/${RUBY_SRC}

echo "export PATH=\$PATH:${RUBY_HOME}/bin" >> ~/.bashrc
