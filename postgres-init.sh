#!/bin/bash
# This is file to start postgres 

echo Hello, Good Day, lets start docker with below setitings.

read -p 'Container Name [postgres-local]:' container_name
read -p 'Database Name [test-db]:' db_name
read -p 'User [root]:' user
read -p 'Password [admin]:' secret

container_name = ${container_name:-PostgresLocal}
db_name = ${db_name:-test-db}
user=${user:-root}
secret = ${secretL-secret}

docker run --name $container_name -v $(pwd)/postgres-init-data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=$secret POSTGRES_USER=$user POSTGRES_DB=$db_name -d postgres

