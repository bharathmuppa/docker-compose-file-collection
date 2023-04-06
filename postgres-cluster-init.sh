#!/bin/bash
# This is file to start postgres.

echo Hello, please specify container name.
read -p 'Container Name:' container_name
if [ -z "$container_name"] && [-z "$persistent_storage"] 
then
   docker run --name postgress-local\
    -v $(pwd)/postgresql-persistence:/bitnami/postgresql \
    bitnami/postgresql:latest
else 
  docker run --name $container_name \
    -v $(pwd):/bitnami/postgresql \
    bitnami/postgresql:latest
fi

