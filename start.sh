#!/bin/bash
/usr/sbin/sshd -D &
/etc/init.d/php-fpm start > /dev/null
/usr/local/nginx/sbin/nginx
/usr/local/redis/bin/redis-server /usr/local/redis/redis.conf
