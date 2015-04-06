#!/bin/sh

. /etc/global.rc

KEY_TYPE='rsa'
KEY_NAME="${HOME}/.ssh/id_rsa"
AUTHORIZED_KEY="${HOME}/.ssh/authorized_keys"
TMP="${HOME}/.ssh/id_rsa.pub"

[ -s $KEY_NAME ] || ssh-keygen -t ${KEY_TYPE} -f ${KEY_NAME} -P ''

cat ${TMP} >> ${AUTHORIZED_KEY}
chmod 600 ${AUTHORIZED_KEY}
\rm -f ${TMP}

exit 0
