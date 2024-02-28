FROM apache/spark:latest

WORKDIR /app

COPY . .

CMD ["java", "-cp", "spark-app.jar"]



