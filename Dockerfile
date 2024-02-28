FROM apache/spark:latest

# Create a directory for the application JAR
RUN mkdir -p /opt/spark/work-dir

# Copy the application JAR into the work directory
COPY target/scala-2.12/spark-pi_2.12-1.0.jar /opt/spark/work-dir

# Set the working directory
WORKDIR /opt/spark/work-dir

