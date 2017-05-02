#!/bin/bash
sudo /etc/init.d/mysqld restart
killall -9 nginx
killall -9 php-fpm
/usr/local/nginx/nginx-lua/sbin/nginx -p ~/workspace/nginx/
php-fpm
sh ~/shell/logstash_restart.sh
sh ~/shell/zookeeper_restart.sh
sh ~/shell/kafka_restart.sh
