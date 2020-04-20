FROM maven:3-jdk-8

COPY . /app

WORKDIR /app

RUN apt update && apt install npm -y \
        && mvn package -DskipTests \


