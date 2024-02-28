# Use the official Apache Spark image as the base image
FROM apache/spark:latest

# Copy the compiled JAR file into the container
#COPY target/scala-2.12.1/spark-pi_2.12-1.0.jar /app/spark-pi.jar

# Define the command to run the Spark application
CMD ["spark-submit", "--class", "SparkPi", "--master", "local[*]", "/app/spark-pi.jar"]
