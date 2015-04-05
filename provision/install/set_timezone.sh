#!/bin/sh

. /etc/global.rc

\cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
/etc/init.d/crond restart
