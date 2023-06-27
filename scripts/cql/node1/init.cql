CREATE KEYSPACE mbaperro WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : '3'};

USE mbaperro;

CREATE TABLE Person (
    id UUID PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

INSERT INTO person (id, first_name, last_name)
VALUES (uuid(), 'John', 'Doe');

INSERT INTO person (id, first_name, last_name)
VALUES (uuid(), 'Jane', 'Smith');

INSERT INTO person (id, first_name, last_name)
VALUES (uuid(), 'Michael', 'Johnson');
