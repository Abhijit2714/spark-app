# Dockerfile
FROM openjdk:8-jre

WORKDIR /app

COPY target/scala-2.12/spark-pi-assembly.jar .

CMD ["java", "-cp", "spark-pi-assembly.jar", "PiSpark"]
