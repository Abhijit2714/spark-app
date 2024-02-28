# Dockerfile
FROM openjdk:8-jre

WORKDIR /app

# Copy the Scala source file into the container
COPY app/PiSpark.scala .

# Compile the Scala source file to generate the class files
RUN scalac -classpath "$(find /usr/local/spark -name '*jar' | tr '\n' ':')" PiSpark.scala

# Command to run the Scala application
CMD ["spark-submit", "--class", "PiSpark", "--master", "local[*]", "/app/PiSpark.scala"]
