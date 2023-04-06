#!/bin/bash
# This is file to start mongo with one primary, one secondary and one arbitter systems.

export MONGODB_VERSION=6.0-ubi8
echo Hello, please specify container name.
read -p 'Container Name:' container_name
read -p 'Persistent Storage:' persistent_storage
read -p 'Do you want to run it on m1?' on_m1
if [ -z "$container_name"] && [-z "$persistent_storage"] 
then
    docker run --name mongodb-local -d -p 27017:27017  mongodb/mongodb-community-server:$MONGODB_VERSION      
else 
    docker run --name $container_name -d -p 27017:27017 -v $(pwd)/data:/data/db mongodb/mongodb-community-server:$MONGODB_VERSION
fi

