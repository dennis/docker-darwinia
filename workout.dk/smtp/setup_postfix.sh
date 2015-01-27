#!/bin/bash
#set -x
set -e

if [ -z "$SMTP_GATEWAY" ]; then
	    echo "\$SMTP_GATEWAY NOT SET!"
	    exit 1
fi

if [ -z "$HOSTNAME" ]; then
	    echo "\$HOSTNAME NOT SET!"
	    exit 1
fi

#echo "Setting up postfix using $SMTP_GATEWAY"
#echo "*              smtp:$SMTP_GATEWAY"  >/etc/postfix/transport
#postconf transport_maps=hash:/etc/postfix/transport
#postmap hash:/etc/postfix/transport
postconf relayhost=$SMTP_GATEWAY
postconf myhostname=$HOSTNAME

service postfix start
