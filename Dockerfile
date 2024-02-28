FROM openjdk:8-alpine
RUN apk --update add wget tar bash
RUN wget http://mirrors.advancedhosters.com/apache/spark/spark-3.0.0-preview2/spark-3.0.0-preview2-bin-hadoop2.7.tgz
RUN tar -xzf spark-3.0.0-preview2-bin-hadoop2.7.tgz && mv spark-3.0.0-preview2-bin-hadoop2.7 /spark && rm spark-3.0.0-preview2-bin-hadoop2.7.tgz
COPY start-master.sh /start-master.sh
COPY start-worker.sh /start-worker.sh
