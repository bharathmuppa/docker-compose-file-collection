#!/bin/bash
# This is file to start postgres

echo Hello, please specify container name.
read -p 'Container Name:' container_name
if [ -z "$container_name"] 
then
    docker run --name postgres-local -v $(pwd)/postgres-init-data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=admin POSTGRES_USER=root -d postgres
else 
   docker run --name $container_name -e POSTGRES_PASSWORD=mysecretpassword POSTGRES_USER=root -d postgres

fi

