#!/bin/bash
# This is file to start neo4j

echo Hello, please specify container name.
read -p 'Container Name:' container_name
if [ -z "$container_name"] 
then
    docker run --name cassandra-local -v $(pwd)/cassandra-init-data:/var/lib/cassandra -d cassandra:tag
else 
   docker run --name $container_name -v $(pwd)/cassandra-init-data:/var/lib/cassandra -d cassandra:tag
fi

