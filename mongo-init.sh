#!/bin/bash
# This is file to start mongo with one primary, one secondary and one arbitter systems.

read -p 'Container Name [postgres-local]:' container_name
read -p 'Database Name [test-db]:' db_name
read -p 'User [root]:' user
read -p 'Password [admin]:' secret

container_name = ${container_name:-PostgresLocal}
db_name = ${db_name:-test-db}
user=${user:-root}
secret = ${secretL-secret}

 docker run --name $container_name -v $(pwd)/mongo-init-data:/data/db -d mongo:tag -p 27017:27017    --wiredTigerCacheSizeGB 1.5  -e MONGO_INITDB_ROOT_USERNAME=$user
	-e MONGO_INITDB_ROOT_PASSWORD=$secret

