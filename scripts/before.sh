#!/bin/bash
apt update
apt install nginx -y
rm -rf /var/www/html/*.html
