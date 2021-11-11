FROM openjdk:8-jre-alpine

RUN adduser davmail -D && mkdir /app
WORKDIR /app
USER davmail
