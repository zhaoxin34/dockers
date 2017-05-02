#!/bin/bash
/usr/local/logstash-2.4.0/bin/logstash -f ~/workspace/logstash/conf/logstash.conf > ~/workspace/logstash/logs/logstash.log
# . ~/shell/func/func_waited_kill.sh
# function getPid() {
#     ps ux|grep java|grep logstash|grep -v grep|grep '/workspace/logstash/conf/logstash.conf'|awk '{print $2}'
# }
# pid=`getPid`
# if [ -z "$pid" ]; then
#    nohup /usr/local/logstash-2.4.0/bin/logstash -f ~/workspace/logstash/conf/logstash.conf > ~/workspace/logstash/logs/logstash.log 2>&1 &
#    exit
# fi
# 
# waited_kill
