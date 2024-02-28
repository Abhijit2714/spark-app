FROM apache/spark:latest

COPY target/scala-2.12/spark-pi_2.12-1.0.jar /opt/spark/work-dir
