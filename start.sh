#!/bin/sh
/usr/sbin/sshd -D

/etc/init.d/php-fpm start
/usr/local/nginx/sbin/nginx