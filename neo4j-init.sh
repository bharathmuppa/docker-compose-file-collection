#!/bin/bash
# This is file to start neo4j

echo Hello, please specify container name.
read -p 'Container Name:' container_name
if [ -z "$container_name"] 
then
    docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$(pwd)/neo4j-init-data:/data \
    neo4j
else 
   docker run --name $container_name\
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$(pwd)/neo4j-init-data:/data \
    neo4j
fi

