#!/bin/sh

. /etc/global.rc

setenforce 0
service iptables stop
service ip6tables stop
chkconfig iptables off
chkconfig ip6tables off
