# Dockerfile
FROM openjdk:8-jre

# Install sbt (Scala Build Tool)
RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
    apt-get update && \
    apt-get install -y sbt

WORKDIR /app

# Copy only build.sbt to leverage Docker cache for dependencies
COPY app/build.sbt ./
# Copy the entire app directory (including Scala source files)
COPY app/ ./

# Build Scala project and generate assembly JAR
RUN sbt clean assembly

# Copy the assembly JAR to the container
COPY target/scala-2.12/spark-pi-assembly.jar .

CMD ["java", "-cp", "spark-pi-assembly.jar", "PiSpark"]
