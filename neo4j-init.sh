#!/bin/bash
# This is file to start neo4j

read -p 'Container Name [neo4j-local]:' container_name
container_name="${container_name:-neo4j_local}"

read -p 'Database Name [test-db]:' db_name
db_name="${db_name:-test_db}"

read -p 'Password [admin@1234]:' secret
secret="${secret:-admin@1234}"

# Please note that there is currently no way to change the initial username from neo4j.

docker run --name "$container_name" -p 7474:7474 -p 7687:7687 -v $(pwd)/data/neo4j:/data -v $(pwd)/data/neo4j/conf:/conf -d -e NEO4J_AUTH=neo4j/${secret}  neo4j:latest

# docker exec -it neo4j_local bash
# cypher-shell -u neo4j -p admin@1234
#  --env NEO4J_dbms_memory_pagecache_size=1G
