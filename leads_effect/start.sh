echo "" >  ./workspace/logstash/logs/logstash.log
touch ./workspace/nginx/logs/*
rm -f ./workspace/logstash/sincedb/*

docker stack deploy -c docker-compose.yml leads_effect
tail -f ./workspace/logstash/logs/logstash.log
