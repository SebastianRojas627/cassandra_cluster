#!/bin/bash

CONTAINER_NAME="node1"
KEYSPACE_NAME="my_keyspace"
TABLE_NAME="Person"
CASSANDRA_PASSWORD="password"

docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "CREATE KEYSPACE $KEYSPACE_NAME WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor': 3};"

docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "USE $KEYSPACE_NAME;"

docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "CREATE TABLE $TABLE_NAME (id UUID PRIMARY KEY, name TEXT, age INT);"

docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "INSERT INTO $TABLE_NAME (id, name, age) VALUES (uuid(), 'John', 25);"
docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "INSERT INTO $TABLE_NAME (id, name, age) VALUES (uuid(), 'Jane', 30);"
docker exec -it "$CONTAINER_NAME" cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "INSERT INTO $TABLE_NAME (id, name, age) VALUES (uuid(), 'Alice', 35);"
