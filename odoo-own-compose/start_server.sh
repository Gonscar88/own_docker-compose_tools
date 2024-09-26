#!/bin/sh
# $1 deberá ser el nombre del proyecto
# test: cacao_qa
PROJECT_NAME=$1

# for qa 8082, to production must be 8069
HOST_PORT=$2

echo "Starting Server..." ${PROJECT_NAME}
echo "Running on port:" ${HOST_PORT}

HOST_PORT=${HOST_PORT}  docker-compose -p ${PROJECT_NAME} up -d

docker exec -it ${PROJECT_NAME}_web_1 pip3 install -r /mnt/extra-addons/own_addons/requirements.txt