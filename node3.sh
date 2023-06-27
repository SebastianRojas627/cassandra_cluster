#!/bin/bash

CONTAINER_NAME="node3"
KEYSPACE_NAME="my_keyspace"
TABLE_NAME="Person"
CASSANDRA_PASSWORD="password"

docker-compose exec "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "USE $KEYSPACE_NAME;"

docker-compose exec "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "CONSISTENCY ONE;"
