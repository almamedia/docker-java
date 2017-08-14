#!/bin/bash

USER_ID=${LOCAL_USER_ID:-9001}

useradd --shell /bin/bash -u $USER_ID -o -c "" -m user
export HOME=/home/user
chown user /app
chown user /home/user

if [ -z $1 ]; then
	exec /usr/local/sbin/su-exec user bash
else
	exec /usr/local/sbin/su-exec user "$@"
fi

