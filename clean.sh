#!/bin/bash
echo "Cleaning website codes, mysql dbs and httpd logs..."
rm -rf webroot/qiqisdress.com
rm -rf mysql/data/*
rm -rf apache-php/logs/*
echo "Done!"
