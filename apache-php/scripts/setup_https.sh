#!/bin/bash

if [ $# -lt 1 ]
then
    echo "Usage: ./setup_https.sh </path/to/certs parent dir>"
    exit
fi

echo "install tool and cron job"
curl https://get.acme.sh | sh

echo "issue certs"
if [ "$1" = "web" ]; then
~/.acme.sh/acme.sh --issue --apache -d qiqisdress.com -d www.qiqisdress.com
else
cp -R $1 ~/.acme.sh/
fi

echo "install/copy certs to apache"
~/.acme.sh/acme.sh --installcert -d qiqisdress.com \
--certpath      /etc/apache2/certs/qiqisdress.com/qiqisdress.com.cer \
--keypath       /etc/apache2/certs/qiqisdress.com/qiqisdress.com.key \
--capath        /etc/apache2/certs/qiqisdress.com/ca.cer \
--fullchainpath /etc/apache2/certs/qiqisdress.com/fullchain.cer \
--reloadcmd     "service apache2 force-reload"

echo "enable acme auto-update"
~/.acme.sh/acme.sh --upgrade --auto-upgrade
