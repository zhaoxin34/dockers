#!/bin/bash
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'abc123' WITH GRANT OPTION; FLUSH PRIVILEGES; delete from mysql.user  where user='';" | mysql -uroot -h127.0.0.1