FROM openjdk:8-jre

# Set the working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/scala-2.12/spark-pi-assembly-1.0.jar /app

# Command to run the Spark application
CMD ["java", "-jar", "spark-pi-assembly-1.0.jar"]
