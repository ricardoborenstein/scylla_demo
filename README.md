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
## Generate CSV
This will generate the CSV that will be loaded by the jupyter-notebook

Please clone the TPC-DS Kit repository: 
```
git clone https://github.com/gregrahn/tpcds-kit`
```

Follow the guide to build the project:
```
https://github.com/gregrahn/tpcds-kit#setup
```

To generate 1GB of CSV data:
```
dsdgen -sc 1
```
> -sc = scale in GB

## Accessing the Demo
Access: 
http://ricardo-server:8888/notebooks/work/TPC-DS-Benchmark.ipynb#

Starting Real-Time Workload:
```
python3 generate.py
```

