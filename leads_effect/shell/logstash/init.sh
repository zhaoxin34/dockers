#!/bin/bash
CUR_DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $CUR_DIR

# delete old dir
WORKSPACE=~/workspace/logstash
rm -rf $WORKSPACE

# export main evn
export PORT=2181
export DATA_DIR=$WORKSPACE/data
export CNF_DIR=$WORKSPACE/conf
export LOG_DIR=$WORKSPACE/logs
export SINCEDB_DIR=$WORKSPACE/sincedb

mkdir -p $DATA_DIR
mkdir -p $CNF_DIR
mkdir -p $LOG_DIR
mkdir -p $SINCEDB_DIR

# copy config files
cp ./conf/* $CNF_DIR/
# copy data
cp ./data/* $DATA_DIR/

python create_config.py > $CNF_DIR/logstash.conf
sh start.sh
