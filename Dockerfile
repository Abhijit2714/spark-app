# Use the latest version of Apache Spark image as the base image
FROM apache/spark:latest

# Copy the Scala JAR file from the target directory to the Spark work directory
COPY target/scala-2.12/spark-pi_2.12-1.0.jar /opt/spark/work-dir/spark-pi_2.12-1.0.jar


