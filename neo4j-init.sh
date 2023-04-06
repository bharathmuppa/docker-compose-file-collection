#!/bin/bash
# This is file to start neo4j

read -p 'Container Name [postgres-local]:' container_name
read -p 'Password [admin]:' secret

container_name = ${container_name:-PostgresLocal}
db_name = ${db_name:-test-db}

# Please note that there is currently no way to change the initial username from neo4j.

 docker run --name $container_name --env NEO4J_AUTH=neo4j/$secret\
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$(pwd)/neo4j-init-data:/data \
    neo4j

