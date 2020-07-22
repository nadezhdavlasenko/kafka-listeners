FROM openjdk:8-jre-alpine

#RUN mvn package
COPY ./target/kafka-listeners-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
RUN java -jar "kafka-listeners-1.0-SNAPSHOT.jar"