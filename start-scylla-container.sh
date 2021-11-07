#!/bin/bash
set -x

#!/bin/bash
set -x

docker-compose up -d 
wait 5
docker logs pyspark-jupyter
