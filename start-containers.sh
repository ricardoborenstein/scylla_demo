#!/bin/bash
set -x

docker-compose up -d --build
wait 30
docker-compose exec scylla-manager bash -c 'sctool cluster add --name "Docker Cluster" --host=scylladb-01 --auth-token=token'

docker logs pyspark-jupyter
