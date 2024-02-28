# Dockerfile
FROM openjdk:8-jre

WORKDIR /app

# Copy the Scala source file into the container
COPY app/sample.scala .

# Compile the Scala source file to generate the class files
RUN scalac sample.scala

# Command to run the Scala application
CMD ["scala", "sample"]
