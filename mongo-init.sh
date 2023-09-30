#!/bin/bash
# This is file to start mongo db on your machine.

read -p 'Container Name [mongo-local]:' container_name
container_name="${container_name:-mongo_local}"

read -p 'Database Name [test-db]:' db_name
db_name="${db_name:-test_db}"

read -p 'User [root]:' user_name
user_name="${user_name:-root}"

read -p 'Password [admin]:' secret
secret="${secret:-admin}"


docker run --name "$container_name" -v "$(pwd)/data/mongo:/data/db" -d -p 27017:27017  -e MONGO_INITDB_ROOT_USERNAME="$user_name" -e MONGO_INITDB_ROOT_PASSWORD="$secret"  MONGO_INITDB_DATABASE="$db_name" mongo:latest


