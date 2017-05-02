#!/bin/bash
CUR_DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $CUR_DIR

# delete old dir
WORKSPACE=~/workspace/kafka
rm -rf $WORKSPACE

# export main evn
export PORT=2181
export DATA_DIR=$WORKSPACE/data
export CNF_DIR=$WORKSPACE/conf
export LOG_DIR=$WORKSPACE/logs

mkdir -p $DATA_DIR
mkdir -p $CNF_DIR
mkdir -p $LOG_DIR

# copy config files
cp ./conf/* $CNF_DIR/

echo -e "$(eval "echo -e \"`<./conf/server.properties`\"")" > $CNF_DIR/server.properties

sh start.sh
