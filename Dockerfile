# Dockerfile
FROM openjdk:8-jdk

# Install Scala
RUN apt-get update && \
    apt-get install -y scala

WORKDIR /app

# Copy the Scala source file into the container
COPY app/sample.scala .

# Compile the Scala source file to generate the class files
RUN scalac sample.scala

# Command to run the Scala application
CMD ["scala", "sample"]
