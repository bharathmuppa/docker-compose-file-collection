#!/bin/bash
# This is file to start redis with user name and password 

read -p 'Databse Name' container_name
container_name="${container_name:-mysql_local}"

# Default user name is root

read -p 'Password [admin]:' secret
secret="${secret:-toor}"

docker run --name "$container_name" -e MYSQL_ROOT_PASSWORD="$secret"  -v $(pwd)/data/mysql:/var/lib/mysql -p 3306:3306 -d mysql:latest