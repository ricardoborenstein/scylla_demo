This demo shows how to run a a real-time workload on Scylla and Analyse using Spark 3 job based on Retail Data

Prerequisites:
---------------
Read and run below carefully, any of steps is skipped or broken, the whole app will error out with weird messages ;-)
Below works well in Fedora 34, replace the dnf/yum commands with their appropriate apt alternative for debian systems

Make sure you have docker and docker-compose installed.
https://docs.docker.com/engine/install/
https://docs.docker.com/compose/install/

start a scylla container:
```
./start-scylla-container.sh
```

Now you should have scylla 4.4.3 listening on port 9042 and Jupyter Notebook with PySpark on port 8888

Check the output of `docker logs pyspark-jupyter` to get the token

verify using `docker ps`


## CQLSH
`docker exec -it scylladb-01 cqlsh`

## Install NoSQlBench
```
wget https://github.com/nosqlbench/nosqlbench/releases/download/nosqlbench-4.15.63/nb
chmod +x nb
```

## Install SBT
Make sure you have latest sbt:
https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Linux.html


Building the demo:
-----------------
Build the project:

```
java --version
```

should say OpenJDK 11
then build:

```
sbt assembly
```

Verify you have the jar built:
```
ls -la target/scala-2.12/spark3-scylla4-example-assembly-0.1.jar
```
## Start environment
``` sh start-containers.sh ```
## Generate dimension tables
Access:
http://localhost:8888/lab/tree/work/Generate_Dimension_Tables_Parquet.ipynb

## Accessing the Demo
Access: 
http://localhost:8888/lab/tree/work/Retail%20Demo%20-%20ScyllaDB.ipynb

## Starting Real-Time Workload:
Access:
http://localhost:8888//lab/tree/work/NoSQLBench_Real-time_Workload.ipynb


## Connect Scylla Monitoring into the the demo network

Download the latest release from:
https://github.com/scylladb/scylla-monitoring/releases/tag/scylla-monitoring-3.9.1

Add ```scylladb-01``` IP at ```prometheus/scylla_servers.yml```

Add ```scylla-manager``` IP at ```prometheus/scylla_manager_servers.yml```


Adding into the demo network:
```
for i in {aprom,agraf,aalert,agrafrender,loki,promtail}; do docker network connect scylla_demo_scylla_cluster_scylla_net ${i}; done 
'''

