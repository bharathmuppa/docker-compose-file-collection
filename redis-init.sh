#!/bin/bash
# This is file to start redis with user name and password 

read -p 'Container Name [redis-local]:' container_name
container_name="${container_name:-redis_local}"

read -p 'User [root]:' user_name
user_name="${user_name:-root}"

read -p 'Password [admin]:' secret
secret="${secret:-admin}"

docker run --name "$container_name" -d -v $(pwd)/data/redis:/data -p 6379:6379 -e REDIS_PASSWORD="$secret" -e REDIS_USERNAME="$user_name" redis:latest
