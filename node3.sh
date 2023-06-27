#!/bin/bash

export CQLSH_USERNAME=user
export CQLSH_PASSWORD=password

cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "USE $KEYSPACE_NAME;"

cqlsh --username=cassandra --password="$CASSANDRA_PASSWORD" -e "CONSISTENCY ONE;"
