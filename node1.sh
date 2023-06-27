#!/bin/bash

export CQLSH_USERNAME=user
export CQLSH_PASSWORD=password

echo "Creating keyspace..."
cqlsh --username=$CQLSH_USERNAME --password=$CQLSH_PASSWORD -e "CREATE KEYSPACE IF NOT EXISTS mbaperro WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor': 3};" 

echo "Using keyspace..."
cqlsh --username=$CQLSH_USERNAME --password=$CQLSH_PASSWORD -e "USE my_keyspace;"

echo "Creating table..."
cqlsh --username=$CQLSH_USERNAME --password=$CQLSH_PASSWORD -e "CREATE TABLE IF NOT EXISTS Person (id UUID PRIMARY KEY, name TEXT, age INT);"

echo "Inserting data..."
cqlsh --username=$CQLSH_USERNAME --password=$CQLSH_PASSWORD -e "INSERT INTO my_table (id, name) VALUES (uuid(), 'John', 25);"
cqlsh --username=$CQLSH_USERNAME --password=$CQLSH_PASSWORD -e "INSERT INTO my_table (id, name) VALUES (uuid(), 'Mark', 30);"
cqlsh --username=$CQLSH_USERNAME --password=$CQLSH_PASSWORD -e "INSERT INTO my_table (id, name) VALUES (uuid(), 'Jane', 35);"

echo "Initialization complete."
