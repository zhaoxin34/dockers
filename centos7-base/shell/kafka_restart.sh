#!/bin/bash
~/workspace/kafka_2.11-0.10.0.1/bin/kafka-server-stop.sh
~/workspace/kafka_2.11-0.10.0.1/bin/kafka-server-start.sh -daemon ~/workspace/kafka_2.11-0.10.0.1/config/server.properties
