#!/usr/bin/bash
cd /var/www/html/
cp -avr mgmt/* /var/www/html/
rm -rf mgmt
exit 0;
