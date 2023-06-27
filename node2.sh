#!/bin/bash

CONTAINER_NAME="node2"
KEYSPACE_NAME="my_keyspace"
TABLE_NAME="Person"
CASSANDRA_PASSWORD="password"

docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "USE $KEYSPACE_NAME;"

docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "CONSISTENCY ONE;"
