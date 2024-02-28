FROM openjdk:8-jre-slim

WORKDIR /app

COPY . .

CMD ["java", "-cp", "spark-app.jar"]



