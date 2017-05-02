#!/bin/bash
CUR_DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $CUR_DIR

WORKSPACE=~/workspace/zookeeper
rm -rf $WORKSPACE

export PORT=2181
export DATA_DIR=$WORKSPACE/data
export ZOOCFGDIR=$WORKSPACE/conf
export ZOO_LOG_DIR=$WORKSPACE/logs

mkdir -p $ZOOCFGDIR
mkdir -p $DATA_DIR
mkdir -p $ZOO_LOG_DIR

echo -e "$(eval "echo -e \"`<./conf/zoo.cfg`\"")" > $ZOOCFGDIR/zoo.cfg
cp ./conf/log4j.properties $ZOOCFGDIR
cp ./conf/configuration.xsl $ZOOCFGDIR

sh start.sh
