#!/bin/bash
[[ -z "${KAFKA_CLUSTER_ID}" ]] && KAFKA_CLUSTER_ID="$(bin/kafka-storage.sh random-uuid)"
echo "Using KAFKA_CLUSTER_ID: ${KAFKA_CLUSTER_ID}"
bin/kafka-storage.sh format -t $KAFKA_CLUSTER_ID -c config/kraft/server.properties
bin/kafka-server-start.sh config/kraft/server.properties
