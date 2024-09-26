#!/bin/sh
# $1 deberá ser el nombre del proyecto
# test: cacao_qa
PROJECT_NAME=$1

# Test 8082, para prod deberá ser 8069
HOST_PORT=$2

ENTERPRISE_PATH=$3

echo "Stoping Server..."
echo ${PROJECT_NAME}
echo "Running on port:" ${HOST_PORT}


HOST_PORT=${HOST_PORT}  docker-compose -p ${PROJECT_NAME} down