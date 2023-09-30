#!/bin/bash
# This is file to start postgres 

echo Hello, Good Day, lets start docker with below setitings.

read -p 'Container Name [postgres_local]:' container_name
container_name="${container_name:-postgres_local}"

read -p 'Database Name [test-db]:' db_name
db_name="${db_name:-test_db}"

read -p 'User [root]:' user_name
user_name="${user_name:-root}"

read -p 'Password [admin]:' secret
secret="${secret:-admin}"


docker run --name "$container_name" -d -p 5432:5432 -v $(pwd)/data/postgres:/var/lib/postgresql/data -e POSTGRES_PASSWORD="$secret" -e POSTGRES_USER="$user_name" -e POSTGRES_DB="$db_name" postgres:latest

