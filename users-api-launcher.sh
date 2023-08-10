#!/usr/bin/env bash 

JWT_SECRET=PRFT SERVER_PORT=8083 SPRING_ZIPKIN_BASE_URL=http://192.168.56.80:9411/ /usr/bin/java -jar /app/users-api/target/users-api-0.0.1-SNAPSHOT.jar > /var/log/user-api-launcher_log
