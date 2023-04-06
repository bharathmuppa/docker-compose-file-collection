#!/bin/bash
# This is file to start mongo with one primary, one secondary and one arbitter systems.

echo Hello, please specify container name.
read -p 'Container Name:' container_name
if [ -z "$container_name"] 
then
    docker run --name mongodb-local -v $(pwd)/mongo-init-data:/data/db -d mongo:tag -p 27017:27017    --wiredTigerCacheSizeGB 1.5  -e MONGO_INITDB_ROOT_USERNAME=root
	-e MONGO_INITDB_ROOT_PASSWORD=admin
else 
    docker run --name $container_name -v $(pwd)/mongo-init-data:/data/db -d mongo:tag -p 27017:27017    --wiredTigerCacheSizeGB 1.5  -e MONGO_INITDB_ROOT_USERNAME=root
	-e MONGO_INITDB_ROOT_PASSWORD=admin
fi

