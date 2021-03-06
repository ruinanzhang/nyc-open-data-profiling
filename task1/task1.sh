#!/bin/bash

#. /etc/profile.d/modules.sh
module load spark/2.4.0
module load python/gnu/3.6.5

hadoop fs -rm -r /user/$USER/Project/task1

spark-submit --conf spark.pyspark.python=/share/apps/python/3.6.5/bin/python src/task1.py

hadoop fs -getmerge Project/task1/268n-a7em.json data/t1.json
