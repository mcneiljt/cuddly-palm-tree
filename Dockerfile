FROM eclipse-temurin:11
WORKDIR /tmp
ADD https://downloads.apache.org/kafka/3.3.1/kafka_2.13-3.3.1.tgz .
#COPY kafka_2.13-3.3.1.tgz .
RUN tar xf kafka_2.13-3.3.1.tgz
RUN mv kafka_2.13-3.3.1 /kafka
WORKDIR /kafka
ADD quickstart.sh quickstart.sh
RUN chmod +x quickstart.sh
