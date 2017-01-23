#!/bin/bash

echo "install tool and cron job"
curl https://get.acme.sh | sh

echo "issue certs"
#~/.acme.sh/acme.sh --issue --apache -d qiqisdress.com -d www.qiqisdress.com
cp -R /tmp/qiqisdress.com ~/.acme.sh/

echo "install/copy certs to apache"
~/.acme.sh/acme.sh --installcert -d qiqisdress.com \
--certpath      /etc/apache2/certs/qiqisdress.com/qiqisdress.com.cer \
--keypath       /etc/apache2/certs/qiqisdress.com/qiqisdress.com.key \
--capath        /etc/apache2/certs/qiqisdress.com/ca.cer \
--fullchainpath /etc/apache2/certs/qiqisdress.com/fullchain.cer \
--reloadcmd     "service apache2 force-reload"

echo "enable acme auto-update"
~/.acme.sh/acme.sh --upgrade --auto-upgrade
