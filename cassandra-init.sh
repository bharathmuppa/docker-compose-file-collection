#!/bin/bash
# This is file to start cassandra

read -p 'Container Name [cassandra-local]:' container_name
container_name="${container_name:-cassandra_local}"

read -p 'Database Name [test-db]:' db_name
db_name="${db_name:-test_db}"

read -p 'User [root]:' user_name
user_name="${user_name:-root}"

read -p 'Password [admin]:' secret
secret="${secret:-admin}"

docker run --name "$container_name" -p 9042:9042 -v $(pwd)/data/cassandra:/var/lib/cassandra -e CASSANDRA_KEYSPACE="$db_name" -e CASSANDRA_USERNAME="$user_name" -e CASSANDRA_PASSWORD="$secret"  -d cassandra:latest
