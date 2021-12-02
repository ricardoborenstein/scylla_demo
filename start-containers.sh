#!/bin/bash
set -x

docker-compose up -d --build
sleep 30
docker logs pyspark-jupyter
sleep  90
docker-compose exec scylla-manager bash -c 'sctool cluster add --name "Docker Cluster" --host=scylladb-01 --auth-token=token'

